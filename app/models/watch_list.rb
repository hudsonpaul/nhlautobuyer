class WatchList
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  def self.get_watched_trades(current_session)
    connection = EaUrls.get_connection

    response = connection.get EaUrls.watchlist_url(current_session)

    watch_hash = Hash.from_xml(response.body) 
    #ap watch_hash

    return [] if watch_hash["iswatchlist"]["traderesults"].nil?

    results = watch_hash["iswatchlist"]["traderesults"]["istradeinfo"]

    if !results.kind_of?(Array)
      results = [results]
    end

    trades = Trade.create_from_watchlist(results).sort_by {|t| [t.time_remaining]}
    return trades
  end

end
