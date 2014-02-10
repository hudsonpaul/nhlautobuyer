class CreateEaCards < ActiveRecord::Migration
  def change
    create_table :ea_cards do |t|
      t.string :name
      t.integer :card_db_id
      t.references :player_type, index: true
      t.integer :auto_buy_at

      t.timestamps
    end
  end
end
