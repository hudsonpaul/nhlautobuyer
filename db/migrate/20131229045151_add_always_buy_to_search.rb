class AddAlwaysBuyToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :always_buy, :integer
  end
end
