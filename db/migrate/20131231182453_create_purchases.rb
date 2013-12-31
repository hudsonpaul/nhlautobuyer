class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :player_type
      t.string :player_name
      t.string :status
      t.integer :amount

      t.timestamps
    end
  end
end
