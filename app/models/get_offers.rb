class GetOffers
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  def self.get_offers(current_session, trade_id)
    connection = EaUrls.get_connection

    response = connection.get EaUrls.get_offers_url(current_session, trade_id)

    offers_hash = Hash.from_xml(response.body) 
    #ap offers_hash

    return [] if offers_hash['isgetoffers']['totalcount'].to_i == 0

    results = offers_hash['isgetoffers']['offerlist']['isofferinfo']

    if !results.kind_of?(Array)
      results = [results]
    end

    offers = Offer.create_from(results)
    offers
  end
end
