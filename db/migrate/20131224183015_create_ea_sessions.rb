class CreateEaSessions < ActiveRecord::Migration
  def change
    create_table :ea_sessions do |t|

      t.string :session_key
      t.integer :user_id
      t.string :user_name

      t.timestamps
    end
  end
end
