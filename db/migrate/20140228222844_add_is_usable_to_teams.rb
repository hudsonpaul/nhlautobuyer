class AddIsUsableToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :is_usable, :boolean, :default => true
  end
end
