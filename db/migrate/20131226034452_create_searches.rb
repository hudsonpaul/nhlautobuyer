class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.references :team, index: true
      t.references :position, index: true
      t.references :style, index: true
      t.string :name_filter
      t.string :bin_filter

      t.timestamps
    end
  end
end
