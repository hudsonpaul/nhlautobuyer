class AddTotyToPlayerType < ActiveRecord::Migration
  def up
    PlayerType.new({:ea_id => 3, :name => 'Team of the Year'}).save
  end

  def down
    PlayerType.where(:ea_id => 3).each do |pt|
      pt.destroy
    end
  end

end
