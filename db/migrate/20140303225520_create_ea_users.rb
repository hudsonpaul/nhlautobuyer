class CreateEaUsers < ActiveRecord::Migration
  def change
    create_table :ea_users do |t|
      t.integer :ea_id
      t.string :name

      t.timestamps
    end
  end
end
