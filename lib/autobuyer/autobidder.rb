def humanize secs
  return 'Expired' if secs < 0
  [[60, :s], [60, :m], [24, :h], [1000, :D]].map{ |count, name|
    if secs > 0
      secs, n = secs.divmod(count)
                          "#{n.to_i}#{name}"
    end
  }.compact.reverse.join(' ')
end

def handle_bids_for_trades(session, credits, trades)

  puts "Checking #{trades.length} trades."
  trades.find_all {|trade| !trade.auto_bid.nil? }.each do |trade|
    puts "Current State is: #{trade.bid_state} for #{trade.card.name} is at #{trade.bid.with_commas} with a max bid of #{trade.auto_bid.max_bid.with_commas} and #{humanize trade.time_remaining} left."
    if (trade.min_required_bid <= trade.auto_bid.max_bid && trade.time_remaining > 0 && trade.time_remaining < 60 && trade.bid_state != "Winning")
      if (credits < trade.min_required_bid)
        puts "You only have #{credits} and require #{trade.min_required_bid} to bid on #{trade.card.name}"
        return
      end 

      puts "I should bid #{trade.min_required_bid.with_commas} on #{trade.card.name}"
      puts Bid.do_bid(session, trade.trade_id, trade.min_required_bid)

    elsif (trade.min_required_bid >= trade.auto_bid.max_bid && trade.time_remaining > 0 && trade.time_remaining < 60)

      puts "#{trade.min_required_bid} on #{trade.card.name} is higher than max of #{trade.auto_bid.max_bid}"
    end
    
    puts "\n"
  
  end

end


random = Random.new
while(1==1) do
  current_session = EaSession.first
  puts "Getting watches."
  credits = CheckCredits.check_credits(current_session)

  puts "You currently have #{credits.with_commas} pucks."

    handle_bids_for_trades(current_session, credits,  WatchList.get_watched_trades(current_session))
    puts "\n"
    sleep(14)

end
