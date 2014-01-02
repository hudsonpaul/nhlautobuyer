class ListCard
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  attr_accessor :card_id, :reserve, :bin

  def self.list_card(current_session, card_id, reserve, bin)

    puts "You did #{current_session.session_key}, card: #{card_id}, reserve: #{reserve}, BIN: #{bin}"
    
    connection = EaUrls.get_connection

    response = connection.get EaUrls.start_trade_url(current_session, card_id, reserve, bin)

    trade_hash = Hash.from_xml(response.body) 
    ap trade_hash

    return trade_hash


  end

  def persisted?
    return false
  end

end

