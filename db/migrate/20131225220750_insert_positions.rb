class InsertPositions < ActiveRecord::Migration
  def up
    Position.new({:name => 'C', :ea_id => 0 }).save
    Position.new({:name => 'LW', :ea_id => 1 }).save
    Position.new({:name => 'RW', :ea_id => 2 }).save
    Position.new({:name => 'LD', :ea_id => 3 }).save
    Position.new({:name => 'RD', :ea_id => 4 }).save
    Position.new({:name => 'G', :ea_id => 5 }).save
  end
  def down
    Position.all.each { |p| p.destroy }
  end
end
