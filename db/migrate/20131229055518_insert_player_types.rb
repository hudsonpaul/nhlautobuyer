class InsertPlayerTypes < ActiveRecord::Migration
  def up
    PlayerType.new({:name => 'Player', :ea_id => 0 }).save
    PlayerType.new({:name => 'HUT Live', :ea_id => 1 }).save
    PlayerType.new({:name => 'Milestone', :ea_id => 2 }).save
    PlayerType.new({:name => 'Winter Classic', :ea_id => 4 }).save
  end
  def down
    PlayerType.all.each { |p| p.destroy }
  end
end
