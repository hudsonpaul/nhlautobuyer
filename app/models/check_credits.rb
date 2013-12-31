class CheckCredits
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'


  def self.check_credits(current_session)

    connection = EaUrls.get_connection

    response = connection.get EaUrls.deck_info_url(current_session)

    deck_info_hash = Hash.from_xml(response.body) 
    #ap deck_info_hash

    return deck_info_hash["deckinfo"]["generalinfo"]["credits"].to_i

  end

end
