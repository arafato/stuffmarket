class DealController < ApplicationController

  before_filter :authorize


  def open_deals
    open_transfers = Transfer.find(:all, :conditions => { :from_user_id => session[:user_id],
                                                          :status => 1
                                                        }
                                  )

    @open_deals = Array.new
    open_transfers.each do |offer|
      if offer.deal.status == 0
        request = Transfer.find(:first, :conditions => { :from_user_id => offer.to_user_id,
                                                         :deal_id => offer.deal.id
                                                       }
                               )
        left, total = num_of_confirm_left(offer)
        @open_deals += [[offer, request, left, total]]
      end
    end
    @action = "expand_open_deals"
  end




  def expand_open_deals
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


  def undecided_deals
    undecided_transfers = Transfer.find(:all, :conditions => { :from_user_id => session[:user_id],
                                                               :status => 0
                                                             }
                                       )

    @undec_deals = Array.new
    undecided_transfers.each do |offer|

      request = Transfer.find(:first, :conditions => { :from_user_id => offer.to_user_id,
                                                       :deal_id => offer.deal.id
                                                     }
                             )
      left, total = num_of_confirm_left(request)
      @undec_deals += [[offer, request, left, total]]
    end
    @action = "expand_undecided_deals"

  end


  def expand_undecided_deals
    begin
      @offer = Offer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid offer #{params[:id]}")
      flash[:notice] = "Invalid product...gotcha hacker!"
      redirect_to :action => :index
    else
      render(:partial => 'expand_ud', :object => @offer)
    end
  end


  def confirm_deal
    trans_give = Transfer.find_by_id(params[:id])
    trans_give.status = 1
    trans_give.save

    if check_status(trans_give)
      flash[:notice] = "All people have agreed on this deal!"
      trans_give.deal.status = 1
      trans_give.deal.save
      redirect_to :action => 'closed_deals'
    else
      flash[:notice] = "You have agreed on this deal! Lean back and relax until the the others have agreed as well!"
      redirect_to :action => 'open_deals'
    end
  end


  def closed_deals
    closed_transfers = Transfer.find(:all, :conditions => { :from_user_id => session[:user_id],
                                                            :status => 1
                                                          }
                                       )
    @closed_deals = Array.new
    closed_transfers.each do |offer|

      if offer.deal.status == 1
        request = Transfer.find(:first, :conditions => { :from_user_id => offer.to_user_id,
                                                         :deal_id => offer.deal.id
                                                       }
                               )
        @closed_deals += [[offer, request, 0, 0]]
      end
    end

    @action = "expand_closed_deals"
  end

  def expand_closed_deals
    @offer = Offer.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid transfer #{params[:id]}")
      flash[:notice] = "Invalid transfer...gotcha hacker!"
      redirect_to :action => :index
    else
      render(:partial => 'offer', :object => @offer)
  end

  def reject_deal
    deal = Deal.find_by_id(params[:id])
    transfers = deal.transfers
    
    transfers.each do |transfer|
      transfer.destroy
    end
    
    deal.destroy
    
    redirect_to :action => 'undecided_deals'
  end


  #####################
  private

  def check_status(trans_act)
    trans_next = trans_act

    begin
      trans_next = Transfer.find(:first,
                                 :conditions => { :from_user_id => trans_next.to_user_id,
                                                  :deal_id => trans_next.deal_id
                                                }
                                )
      if trans_next.status == 0
        return false
      end

    end while trans_act != trans_next

    return true

  end


  def num_of_confirm_left(trans_act)
    left = 0
    total = 0
    trans_next = trans_act



    begin
      trans_next = Transfer.find(:first,
                                 :conditions => { :from_user_id => trans_next.to_user_id,
                                                  :deal_id => trans_next.deal_id
                                                }
                                )
      total += 1
      if trans_next.status == 0
        left += 1
      end

    end while trans_act != trans_next

    [left, total]
  end

end
