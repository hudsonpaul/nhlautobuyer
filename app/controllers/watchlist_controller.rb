class WatchlistController < ApplicationController
  before_action :get_session
  def index

    @watched_trades = WatchList.get_watched_trades(@current_session)

  end
end
