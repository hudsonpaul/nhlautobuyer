class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.integer :ea_id

      t.timestamps
    end
  end
end
