class InsertStyles < ActiveRecord::Migration
  def up
    
    Style.new({:ea_id => 1 , :name => 'DFD'}).save
    Style.new({:ea_id => 2 , :name => 'OFD'}).save
    Style.new({:ea_id => 3 , :name => 'ENF (Defense)'}).save
    Style.new({:ea_id => 4 , :name => 'TWD'}).save
    Style.new({:ea_id => 5 , :name => 'GRN '}).save
    Style.new({:ea_id => 6 , :name => 'PLY'}).save
    Style.new({:ea_id => 7 , :name => 'SNP'}).save
    Style.new({:ea_id => 8 , :name => 'PWF'}).save
    Style.new({:ea_id => 9 , :name => 'TWF'}).save
    Style.new({:ea_id => 10 , :name => 'ENF (Offense)'}).save

  end

  def down 
    Style.all.do {|s| s.destroy }
  end

end
