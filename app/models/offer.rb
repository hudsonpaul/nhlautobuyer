class Offer

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  require 'net/http'
  require 'faraday'
  require 'active_support/core_ext/hash/conversions'
  require 'awesome_print'

  attr_accessor :cards, :pucks, :offered_by

  def self.create_from(results)

    my_offers = []
    
    results.each do |result|
      my_offer = Offer.new    
      my_offer.pucks = result['credits'].to_i

      my_offer.offered_by = EaUser.where(:ea_id => result['userid'].to_i).first

      if my_offer.offered_by.nil?
        my_offer.offered_by = EaUser.new(:ea_id => result['userid'].to_i, :name => result['userid'].to_i)
      end

      my_offer.cards = Card.get_cards_from(result['carddatalist']['carddata'])
      
      my_offers << my_offer
    end 

    my_offers

  end

end
  
