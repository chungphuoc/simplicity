class AddShowCar < ActiveRecord::Migration
  def self.up
        add_column :buildings, :show_whose_car, :boolean, :default=>true;
  end

  def self.down
        remove_column :buildings, :show_whose_car
  end
end
