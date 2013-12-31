class AddPlayerTypeIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :player_type_id, :integer, :default => 0
  end
end
