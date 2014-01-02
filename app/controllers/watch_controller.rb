class WatchController < ApplicationController

  before_action :get_session

  def show
    
    connection = EaUrls.get_connection

    response = connection.get EaUrls.add_watch_url(@current_session, params[:trade_id])

    watch_hash = Hash.from_xml(response.body) 
    ap watch_hash

    @message = watch_hash
  end

end
