class Bid
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'


  def self.do_bid(current_session, trade, amount)

    connection = EaUrls.get_connection

    response = connection.get EaUrls.bid_url(current_session, trade, amount)

    bid_hash = Hash.from_xml(response.body) 
    ap bid_hash

    return bid_hash

  end

end
