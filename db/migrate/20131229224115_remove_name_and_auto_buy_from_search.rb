class RemoveNameAndAutoBuyFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :name_filter
    remove_column :searches, :always_buy
  end
end
