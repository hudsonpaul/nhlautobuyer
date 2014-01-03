class CreateAutoBids < ActiveRecord::Migration
  def change
    create_table :auto_bids do |t|
      t.integer :trade_id
      t.integer :max_bid

      t.timestamps
    end
  end
end
