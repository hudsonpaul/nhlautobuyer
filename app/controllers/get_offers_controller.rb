class GetOffersController < ApplicationController

  before_action :get_session

  def show
  
    @offers = GetOffers.get_offers(@current_session, params[:id])
    
  end

end
