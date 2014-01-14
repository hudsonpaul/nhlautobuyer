class DeckInfo
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'awesome_print'

  attr_accessor :unassigned_cards, :escrow_cards

  def initialize
    self.unassigned_cards = []
    self.escrow_cards = []
  end

  def self.get_deck_info(current_session)

    connection = EaUrls.get_connection

    response = connection.get EaUrls.deck_info_url(current_session)

    deck_info_hash = Hash.from_xml(response.body) 
    ap deck_info_hash

    deck_info = DeckInfo.new
    if (deck_info_hash["deckinfo"]["unassignedcarddatalist"])
      deck_info.unassigned_cards = Card.get_cards_from(deck_info_hash["deckinfo"]["unassignedcarddatalist"]["carddata"])
    end 
    if (deck_info_hash["deckinfo"]["escrowcarddatalist"])
      deck_info.escrow_cards = Card.get_cards_from(deck_info_hash["deckinfo"]["escrowcarddatalist"]["carddata"])
    end

    return deck_info

  end
end
