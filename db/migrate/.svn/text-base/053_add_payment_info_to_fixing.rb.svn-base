class AddPaymentInfoToFixing < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :hours_of_fix, :float
        add_column :maintenance_requests, :parts_cost_of_fix, :float
        add_column :maintenance_requests, :fixed_price_of_fix, :float
        add_column :maintenance_requests, :price_per_hour, :float
  end

  def self.down
        remove_column :maintenance_requests, :hours_of_fix  
        remove_column :maintenance_requests, :parts_cost_of_fix 
        remove_column :maintenance_requests, :fixed_price_of_fix
        remove_column :maintenance_requests, :price_per_hour
  end
  
end
