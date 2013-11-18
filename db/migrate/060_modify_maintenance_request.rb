class ModifyMaintenanceRequest < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :assignee_id, :integer
        add_column :maintenance_requests, :assignee_type, :string
        add_column :maintenance_requests, :is_quite, :boolean
        add_column :maintenance_requests, :quoted_price, :float
        
        remove_column :maintenance_requests, :destination
  end

  def self.down
        remove_column :maintenance_requests, :assignee_id
        remove_column :maintenance_requests, :assignee_type
        remove_column :maintenance_requests, :is_quite
        remove_column :maintenance_requests, :quoted_price
        
        add_column :maintenance_requests, :destination, :string
  end
end
