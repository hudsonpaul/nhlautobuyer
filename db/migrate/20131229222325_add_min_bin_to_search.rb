class AddMinBinToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :min_bin, :integer
  end
end
