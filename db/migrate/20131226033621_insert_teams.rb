class InsertTeams < ActiveRecord::Migration
  def up
    Team.new({:ea_id => 0, :name => 'Anahiem'}).save
    Team.new({:ea_id => 1, :name => 'Winnipeg'}).save
    Team.new({:ea_id => 2, :name => 'Boston'}).save
    Team.new({:ea_id => 3, :name => 'Buffalo'}).save
    Team.new({:ea_id => 4, :name => 'Calgary'}).save
    Team.new({:ea_id => 5, :name => 'Carolina'}).save
    Team.new({:ea_id => 6, :name => 'Chicago'}).save
    Team.new({:ea_id => 7, :name => 'Colorado'}).save
    Team.new({:ea_id => 8, :name => 'Columbus'}).save
    Team.new({:ea_id => 9, :name => 'Dallas'}).save
    Team.new({:ea_id => 10, :name => 'Detroit'}).save
    Team.new({:ea_id => 11, :name => 'Edmonton'}).save
    Team.new({:ea_id => 12, :name => 'Florida'}).save
    Team.new({:ea_id => 13, :name => 'Los Angeles'}).save
    Team.new({:ea_id => 14, :name => 'Minnesota'}).save
    Team.new({:ea_id => 15, :name => 'Montreal'}).save
    Team.new({:ea_id => 16, :name => 'Nashville'}).save
    Team.new({:ea_id => 17, :name => 'New Jersey'}).save
    Team.new({:ea_id => 18, :name => 'New York Islanders'}).save
    Team.new({:ea_id => 19, :name => 'New York Rangers'}).save
    Team.new({:ea_id => 20, :name => 'Ottawa'}).save
    Team.new({:ea_id => 21, :name => 'Philadelphia'}).save
    Team.new({:ea_id => 22, :name => 'Phoenix'}).save
    Team.new({:ea_id => 23, :name => 'Pittsburgh'}).save
    Team.new({:ea_id => 24, :name => 'St. Louis'}).save
    Team.new({:ea_id => 25, :name => 'San Jose'}).save
    Team.new({:ea_id => 26, :name => 'Tampa Bay'}).save
    Team.new({:ea_id => 27, :name => 'Toronto'}).save
    Team.new({:ea_id => 28, :name => 'Vancouver'}).save
    Team.new({:ea_id => 29, :name => 'Washington'}).save
  end

  def down
    Team.all.do {|t| t.destroy }
  end
end
