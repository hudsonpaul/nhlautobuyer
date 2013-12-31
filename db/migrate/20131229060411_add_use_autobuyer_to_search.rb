class AddUseAutobuyerToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :use_autobuyer, :boolean
  end
end
