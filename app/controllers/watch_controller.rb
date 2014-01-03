class WatchController < ApplicationController

  before_action :get_session

  def show
  
    @message = Watch.do_watch(@current_session, params[:trade_id])
    
  end

end
