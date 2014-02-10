json.array!(@ea_cards) do |ea_card|
  json.extract! ea_card, :id, :name, :card_db_id, :player_type_id, :auto_buy_at
  json.url ea_card_url(ea_card, format: :json)
end
