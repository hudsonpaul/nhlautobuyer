json.array!(@filters) do |filter|
  json.extract! filter, :id, :name, :auto_buy_at, :search_id
  json.url filter_url(filter, format: :json)
end
