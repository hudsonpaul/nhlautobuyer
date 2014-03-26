class BidController < ApplicationController
  before_action :get_session

  def show
    return unless user_signed_in?
    logger.debug "TradeId: #{params[:trade_id]} Amount: #{params[:amount]}"
    
    hash = Bid.do_bid(@current_session, params[:trade_id], params[:amount])

    if hash['error'] && hash['error']['errorName'] == 'CARDHOUSE_ERR_OFFER_REJECTED'
      @message = "Rejected"
    else
      @message = "Accepted"
    end

  end
end
