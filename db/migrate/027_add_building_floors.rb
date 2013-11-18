class AddBuildingFloors < ActiveRecord::Migration
  def self.up
      add_column :buildings, :lowest_floor, :integer;
      add_column :buildings, :highest_floor, :integer;
  end               
                     
  def self.down      
      add_column :buildings, :lowest_floor;
      add_column :buildings, :highest_floor;
  end
end
