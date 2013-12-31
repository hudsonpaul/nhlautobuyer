class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :name
      t.integer :auto_buy_at
      t.references :search, index: true

      t.timestamps
    end
  end
end
