class Trade
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'awesome_print'

  attr_accessor :trade_id, :bid, :bin, :time_remaining, :seller, :my_bid, :offers_pending, :buy_it_now, :start_price, :card, :is_watched, :trade_state, :auto_bid, :bid_state

  def min_required_bid
    if (self.bid == 0)
      return self.start_price
    else
      return self.bid + 50
    end
  end

  def should_bid?
    return false if self.card.ea_card.nil?
    return true if self.card.ea_card.auto_buy_at >= self.start_price && self.bid == 0
    return true if self.bid <= self.card.ea_card.auto_buy_at && self.start_price <= self.card.ea_card.auto_buy_at
    return false
  end

  def self.create_from_watchlist(results)

    trades = []

    results.each do |result|
      t = Trade.new
      t.trade_id = result['tradeid'].to_i
      t.start_price = result['reserve'].to_i
      t.bid = result['highestbid'].to_i
      t.bin = result['credits'].to_i
      t.time_remaining = result['expiretime'].to_i
      t.seller = result['sellername']
      t.my_bid = !result['yourbidstate'].to_i.zero?
      t.offers_pending = result['offerspendingcount'].to_i
      t.is_watched = result["iswatched"] == "1" ? true : false
      t.buy_it_now = 1
      t.trade_state = ""
      t.trade_state = "In Progress" if result["tradestate"].to_i == 1
      t.trade_state = "Expired" if result["tradestate"].to_i == 3
      t.trade_state = "Sold" if result["tradestate"].to_i == 4
      t.auto_bid = AutoBid.where(:trade_id => t.trade_id).first
      t.bid_state = "None"
      t.bid_state = "Losing" if result['yourbidstate'].to_i == 1
      t.bid_state = "Winning" if result['yourbidstate'].to_i == 2
      
      t.card = Card.create_from_carddata(result['carddata'])

      trades << t

    end

    trades
  end

  def self.create_from(results, search)

    trades = []

    results.each do |result|
      t = Trade.new
      t.trade_id = result['tradeid'].to_i
      t.start_price = result['reserve'].to_i
      t.bid = result['highestbid'].to_i
      t.bin = result['credits'].to_i
      t.time_remaining = result['expiretime'].to_i
      t.seller = result['sellername']
      t.my_bid = !result['yourbidstate'].to_i.zero?
      t.offers_pending = result['offerspendingcount'].to_i
      t.is_watched = result["iswatched"] == "1" ? true : false
      t.trade_state = ""
      t.trade_state = "In Progress" if result["tradestate"].to_i == 1
      t.trade_state = "Expired" if result["tradestate"].to_i == 3
      t.trade_state = "Sold" if result["tradestate"].to_i == 4
      t.auto_bid = AutoBid.where(:trade_id => t.trade_id).first
      t.bid_state = "None"
      t.bid_state = "Losing" if result['yourbidstate'].to_i == 1
      t.bid_state = "Winning" if result['yourbidstate'].to_i == 2
      

      t.card = Card.create_from_carddata(result['carddata'])

      if t.card.ea_card
        if t.bin <= t.card.ea_card.auto_buy_at && t.bin != 0
          t.buy_it_now = t.buy_it_now || true
	else
          t.buy_it_now = t.buy_it_now || false
	end
      else
        search.filters.each do |filter|
          if (t.bin <= filter.auto_buy_at && t.card.name.index(filter.name) && t.bin != 0)
            t.buy_it_now = t.buy_it_now || true
          else
            t.buy_it_now = t.buy_it_now || false
          end
        end
      end

      t.buy_it_now = t.buy_it_now ? 0 : 1

      trades << t

    end

    trades
  end

end
