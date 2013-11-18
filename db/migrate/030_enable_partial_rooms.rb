class EnablePartialRooms < ActiveRecord::Migration
  def self.up
      change_column :flats, :num_of_rooms, :float;
  end

  def self.down
      change_column :flats, :num_of_rooms, :integer;
  end
end
