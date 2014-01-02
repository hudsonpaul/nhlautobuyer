class WatchlistController < ApplicationController

  def index
    @current_session = EaSession.first

    @watched_trades = WatchList.get_watched_trades(@current_session)

  end
end
