class WatchlistController < ApplicationController

  def index
    @current_session = EaSession.first

    puts "$$$$$$$$$$$$$ Session Id is: #{@current_session.session_key}"

    puts "$$$$$$$$$$$$$ url is #{EaUrls.watchlist_url(@current_session)}"

    @watched_trades = WatchList.get_watched_trades(@current_session)

  end
end
