class AddMinBidMaxBidToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :min_bid, :integer
    add_column :searches, :max_bid, :integer
  end
end
