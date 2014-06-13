class AddStanleyCupEdition < ActiveRecord::Migration
  def up
    PlayerType.new({:name => 'Stanley Cup Edition', :ea_id => 5}).save
  end

  def down
    PlayerType.where(:name => 'Stanley Cup Edition').each do |pt|
      pt.destroy
    end
  end
end
