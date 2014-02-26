class Card
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'awesome_print'

  attr_accessor :name, :position, :style, :card_id, :player_type, :overall, :card_db_id, :ea_card, :games_played

  def self.create_from_carddata(carddata)
    card = Card.new 

    if carddata['strdata']['strdata'].kind_of?(Array)
      card.name = "#{carddata['strdata']['strdata'][0]} #{carddata['strdata']['strdata'][1]}" 
    else
      card.name = "#{carddata['strdata']['strdata']}" 
    end

    card.position = Position.find_by_ea_id(carddata['preferredpositionid'].to_i)
    card.style =  Style.find_by_ea_id(carddata['style'].to_i)
    card.player_type =  PlayerType.find_by_ea_id(carddata['playertypeid'].to_i)
    card.card_id = carddata['cardid']
    card.overall = carddata['rating']
    card.card_db_id = carddata['carddbid']
    card.ea_card = EaCard.where(:card_db_id => card.card_db_id).first
    card.games_played = carddata['liststats']['liststats'][0]

    card
  end

  def self.get_cards_from(carddatalist)

    if !carddatalist.kind_of?(Array)
      carddatalist = [carddatalist]
    end
    
    cards = []

    carddatalist.each do |carddata|
      cards << Card.create_from_carddata(carddata)
    end

    cards

  end
end
