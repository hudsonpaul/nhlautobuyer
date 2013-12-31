class Trade
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  require 'awesome_print'

  attr_accessor :trade_id, :name, :position, :style, :card_id, :start_price, :bid, :bin, :time_remaining, :seller, :my_bid, :offers_pending, :buy_it_now, :player_type

  def self.create_from_watchlist(results)

    trades = []

    results.each do |result|
      t = Trade.new
      t.trade_id = result['tradeid'].to_i
      t.name = "#{result['carddata']['strdata']['strdata'][0]} #{result['carddata']['strdata']['strdata'][1]}" 
      t.position = Position.find_by_ea_id(result['carddata']['preferredpositionid'].to_i)
      t.style =  Style.find_by_ea_id(result['carddata']['style'].to_i)
      t.player_type =  PlayerType.find_by_ea_id(result['carddata']['playertypeid'].to_i)
      t.card_id = result['carddata']['cardid']
      t.start_price = result['reserve'].to_i
      t.bid = result['highestbid'].to_i
      t.bin = result['credits'].to_i
      t.time_remaining = result['expiretime'].to_i
      t.seller = result['sellername']
      t.my_bid = !result['yourbidstate'].to_i.zero?
      t.offers_pending = result['offerspendingcount'].to_i

      t.buy_it_now = 1

      trades << t

    end

    trades
  end

  def self.create_from(results, search)

    trades = []

    results.each do |result|
      t = Trade.new
      t.trade_id = result['tradeid'].to_i
      t.name = "#{result['carddata']['strdata']['strdata'][0]} #{result['carddata']['strdata']['strdata'][1]}" 
      t.position = Position.find_by_ea_id(result['carddata']['preferredpositionid'].to_i)
      t.style =  Style.find_by_ea_id(result['carddata']['style'].to_i)
      t.player_type =  PlayerType.find_by_ea_id(result['carddata']['playertypeid'].to_i)
      t.card_id = result['carddata']['cardid']
      t.start_price = result['reserve'].to_i
      t.bid = result['highestbid'].to_i
      t.bin = result['credits'].to_i
      t.time_remaining = result['expiretime'].to_i
      t.seller = result['sellername']
      t.my_bid = !result['yourbidstate'].to_i.zero?
      t.offers_pending = result['offerspendingcount'].to_i

      search.filters.each do |filter|
        if (t.bin <= filter.auto_buy_at && t.name.index(filter.name) && t.bin != 0)
          t.buy_it_now = t.buy_it_now || true
        else
          t.buy_it_now = t.buy_it_now || false
        end
      end

      t.buy_it_now = t.buy_it_now ? 0 : 1

      trades << t

    end

    trades
  end

end
