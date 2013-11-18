class AddUrgencyToMaintenanceRequest < ActiveRecord::Migration
  def self.up   
      add_column :maintenance_requests, :urgency, :integer, :default=>2;
  end

  def self.down                                                         
      remove_column :maintenance_requests, :urgency
  end
end
