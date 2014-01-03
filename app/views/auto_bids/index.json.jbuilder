json.array!(@auto_bids) do |auto_bid|
  json.extract! auto_bid, :id, :trade_id, :max_bid
  json.url auto_bid_url(auto_bid, format: :json)
end
