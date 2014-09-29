class BrowseController < ApplicationController
  def index
  end

  def search

    if(params[:name] == "")
      redirect_to :action => :index
    end

    if !params[:name].nil?
      session[:search_term] = params[:name]
    end
    @offer_pages, @offers = paginate(:offers,
                                     :conditions => ['name LIKE ?', '%' + session[:search_term] + '%'],
                                     :per_page     => 10)

    @mission = "keyword"
  end

  def browse_category

    if !params[:id].nil?
      session[:search_term] = params[:id]
    end

    sql = "select * from offers o where o.category_id = " + params[:id] + " or
           exists (select * from trans_cats tc where (tc.ancestor_id = " + params[:id] + " and o.category_id = tc.cat_id))"

    @offer_pages = Paginator.new self, 100, 10, @params['page']
    @offers = Offer.find_by_sql(sql + " LIMIT #{10} " + "OFFSET #{@offer_pages.current.to_sql[1]}")

    @mission = "category_search"
  end

  def expand
    begin
      @offer = Offer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid offer #{params[:id]}")
      flash[:notice] = "Invalid product...gotcha hacker!"
      redirect_to :action => :index
    else
      render(:partial => 'offer', :object => @offer)
    end
  end

  def direct_offer
    #########################################
    ## params[:id] --> I WANT
    ## params[:direct_offer] --> I GIVE

    check_transfer_user = Transfer.find(:first, :conditions => { :from_user_id => session[:user_id],
                                                                 :to_user_id   => Offer.find(params[:id]).user.id,
                                                                 :offer_id     => params[:direct_offer]
                                                               }
                                       )

    check_transfer_other = Transfer.find(:first, :conditions => { :from_user_id => Offer.find(params[:id]).user.id,
                                                                  :to_user_id   => session[:user_id],
                                                                  :offer_id     => params[:id]
                                                                }
                                        )



    if !check_transfer_user.nil? && !check_transfer_other.nil?
      flash[:notice] = "You have already made this offer!"
      redirect_to :action => :index
      return
    end

    deal = Deal.new
    deal.status = 0
    deal.save

    transfer_user = Transfer.new
    transfer_other = Transfer.new
    transfer_user.deal_id = deal.id
    transfer_user.from_user_id = session[:user_id]
    transfer_user.to_user_id = Offer.find(params[:id]).user.id
    transfer_user.offer_id = params[:direct_offer]
    transfer_user.status = 1

    transfer_other.deal_id = deal.id
    transfer_other.from_user_id = Offer.find(params[:id]).user.id
    transfer_other.to_user_id = session[:user_id]
    transfer_other.offer_id = params[:id]
    transfer_other.status = 0

    if deal.save          &&
       transfer_user.save &&
       transfer_other.save

      flash[:notice] = "Trade-Offer successfully created!"
    else
      flash[:notice] = "There was an error creating your trade-offer!"
   end
    redirect_to :action => :index

  end


  def show_closed_deals

    @closed_deals = Deal.find(:all, :conditions => { :status => "1"})

  end

end
