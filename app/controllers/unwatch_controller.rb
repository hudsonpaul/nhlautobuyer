class UnwatchController < ApplicationController
  before_action :get_session
  def show
    
    connection = EaUrls.get_connection

    response = connection.get EaUrls.remove_watch_url(@current_session, params[:trade_id])

    unwatch_hash = Hash.from_xml(response.body) 
    ap unwatch_hash

    @message = unwatch_hash
  end

end
