class Searches
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  def self.get_search(current_session, search)
    connection = EaUrls.get_connection
puts EaUrls.search_url(current_session, search)
    response = connection.get EaUrls.search_url(current_session, search)

    search_hash = Hash.from_xml(response.body) 
    #ap search_hash

    return [] if search_hash['issearch']['searchresults'].nil?

    results = search_hash['issearch']['searchresults']['istradeinfo']

    if !results.kind_of?(Array)
      results = [results]
    end

    trades = Trade.create_from(results, search).sort_by {|t| [t.buy_it_now, t.bin]}
    trades
  end

end
