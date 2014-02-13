class SeedLeagues < ActiveRecord::Migration
  def up
    League.new({:name => 'NHL', :ea_id => 0 }).save
    League.new({:name => 'National', :ea_id => 7 }).save
  end

  def down
    League.all.each { |p| p.destroy }
  end
end
