class OfferController < ApplicationController

  before_filter :authorize



  def index
    list
    render :action => 'list'
  end

  def list
    @offer_pages, @offers = paginate(:offers,
                                     :conditions => ['user_id = ?', session[:user_id]],
                                     :per_page => 10)
    @total_offers = Offer.count(:conditions => ['user_id = ?', session[:user_id]])
  end

  def new_offer
    @offer = Offer.new
  end

  def create_offer
    @offer = Offer.new(params[:offer])
    @offer.user_id = session[:user_id]
    
    if @offer.picture_url.empty?
      @offer.picture_url = "defaultPic.png"
    end

    if @offer.save
      save_requests
      session[:offer_id] = @offer.id
      flash[:notice] = 'Product was successfully created.'

      searchDeals(@offer, 5)


      redirect_to :action => 'index'
    else
      render :action => 'new_offer'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    session[:offer_id] = params[:id]
  end

  def update
    @offer = Offer.find(session[:offer_id])
    if @offer.update_attributes(params[:offer])
      flash[:notice] = 'Offer was successfully updated.'
      session[:offer_id] = nil
      redirect_to :action => 'list', :id => @offer
    else
      render :action => 'edit'
    end
  end


  def delete
    @offer = Offer.find(params[:id])
    @offer.requests.destroy_all

    transfers = @offer.transfers
    deal_ids = Array.new

    transfers.each do |trans|
      if !deal_ids.include?(trans.deal_id)
        deal_ids << trans.deal_id
      end
    end

    deal_ids.each do |deal_id|
      deal = Deal.find(deal_id)
      deal.transfers.destroy_all
      deal.destroy
    end

    @offer.destroy

    flash[:notice] = "Offer successfully deleted"
    redirect_to :action => 'list'
  end


  def expand

    begin
      @offer = Offer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid offer #{params[:id]}")
      flash[:notice] = "Invalid product...gotcha hacker!"
    else

      render(:partial => 'offer', :object => @offer)
    end
  end


  protected

  def save_requests
    requests = params[:requests]
    
    requestsCopy = requests.clone
    
    for num in (0..requestsCopy.length)
      r = requestsCopy[num]
      
      for num2 in (0..requestsCopy.length)
      
        if (num2 != num) then
          
          possibleParent = requestsCopy[num2]    
          
          # check if r has possibleParent as parent
          cat = TransCat.find_by_sql(["
            select * from trans_cats where cat_id = ? and ancestor_id = ?
            ", r, possibleParent ])
            
          if (!cat.empty?) then # r has an ancestor!
            requests.delete(r)
          end
          
        end
 
      end
    end
    
    if(!requests.nil?)
        requests.each do |id|
          req = Request.new
          req.category_id = id
          req.offer_id = @offer.id
          req.save
        end
      end
  end




  # search for sharing cycles for source_offer (breadth-first search with limited search depth)
  def searchDeals(source_offer, maxSearchDepth)

    # initialize paths
    paths = Array.new

    # add the first edges to the paths
    # for each request belonging to the source offer...
    for request in source_offer.requests do

      # create a path with a single edge (source_offer, request)
      path = Array.new
      path.push(Edge.new(source_offer, request))

      # add it to the paths
      paths.push(path)

    end

    # search for sharing cycles
    maxSearchDepth.times do

      # store paths for next iteration here
      newPaths = Array.new

      # iterate over all paths
      for path in paths do

        # get this path' last request
        lastRequest = path.last.request

        # search matching offers for it
        matchingOffers = Offer.find_by_sql(["
          select * from offers o where exists (
            select * from trans_cats tc where
              tc.ancestor_id = ? and tc.cat_id = o.category_id)", lastRequest.category_id ])

        # for each found offer...
        for offer in matchingOffers do
          logger.error("---------------------- for offer in matching_offer}")
          # check if the current path contains an offer from a person involved in the cycle already
          # or the current offer is already closed
          already_existing = false

          for edge in path do
            logger.error("---------------------- for edge in path}")
            earlier_user = edge.offer.user

            #if (offer.user.id == earlier_user.id) then # user already involved in the chain
             # already_existing = true
              #break
            #end
            
            if (offer.user.id == edge.offer.user.id) then
              ########
              logger.error("!!!!!!!!!!!user_id #{offer.user.id}")
              logger.error("!!!!!!!!!!!offer_id #{offer.id}")
              already_existing = true
              break
            else
              logger.error("++++++++++++++ user_id#{offer.user.id}")
              logger.error("++++++++++++++offer_id #{offer.id}")
            end

          end

          for transfer in offer.transfers do
              
            if transfer.deal.status == 1 then
              already_existing = true
              break
            end
              
         end
          
          if already_existing then
            next
          end

          # for each request belonging to this offer...
          for request in offer.requests do

            # create a new path by appending the new edge to the existing path
            newPath = path.clone
            newPath.push(Edge.new(offer,request))

            # store new path for the next iteration
            newPaths.push( newPath )


            # check if the request matches to the source offer
            matchingCategories = TransCat.find_by_sql(["
              select * from trans_cats tc where tc.ancestor_id = ? and tc.cat_id = ?",
              request.category_id, source_offer.category_id])

            if (!matchingCategories.empty?) # request matches source offer -> solution found!

               # write the sharing cycle to the database
               writeDealToDB( newPath )

            end

           end

        end

      end

      if (newPaths.empty?)
        break;
      end

      # update current array of paths
      paths = newPaths

    end

 end



  def writeDealToDB(path)

    # create deal
    deal = Deal.new
    deal.status = 0
    deal.save

    for i in 0..(path.length-1) do

      to_edge = path[i]
      from_edge = path[(i+1) % path.length]

      from_user_id = from_edge.offer.user_id
      to_user_id = to_edge.offer.user_id
      offer_id = from_edge.offer.id

      # create transfer entry
      transfer = Transfer.new
      transfer.deal_id = deal.id
      transfer.from_user_id = from_user_id
      transfer.to_user_id = to_user_id
      transfer.offer_id = offer_id
      transfer.status = 0

      transfer.save

    end

  end

end

# edge - used for building sharing paths
class Edge

    attr_reader :offer, :request

    def initialize(offer, request)
      @offer = offer
      @request = request
    end

end

