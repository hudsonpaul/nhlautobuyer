json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :player_type, :player_name, :status, :amount
  json.url purchase_url(purchase, format: :json)
end
