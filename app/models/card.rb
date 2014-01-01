class Card
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'awesome_print'

  attr_accessor :name, :position, :style, :card_id, :player_type

  def self.create_from_carddata(carddata)
    card = Card.new 

    card.name = "#{carddata['strdata']['strdata'][0]} #{carddata['strdata']['strdata'][1]}" 
    card.position = Position.find_by_ea_id(carddata['preferredpositionid'].to_i)
    card.style =  Style.find_by_ea_id(carddata['style'].to_i)
    card.player_type =  PlayerType.find_by_ea_id(carddata['playertypeid'].to_i)
    card.card_id = carddata['cardid']

    card
  end
end
