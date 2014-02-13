class AddLeagueIdToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :league_id, :integer
  end
end
