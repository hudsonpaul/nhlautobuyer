class Selling
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  def self.get_my_trades(current_session)

    connection = EaUrls.get_connection

    response = connection.get EaUrls.my_trades_url(current_session)

    my_trades_hash = Hash.from_xml(response.body) 
    #ap my_trades_hash

    return [] if my_trades_hash['issearch']['searchresults'].nil?

    results = my_trades_hash['issearch']['searchresults']['istradeinfo']

    if !results.kind_of?(Array)
      results = [results]
    end

    trades = Trade.create_from_watchlist(results)
    trades
  end

end
