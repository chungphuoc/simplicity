class DropTenantPliFromMtReq < ActiveRecord::Migration
  def self.up
        remove_column :maintenance_requests, :tenant_id
        remove_column :maintenance_requests, :place_list_item_id
  end

  def self.down
        add_column :maintenance_requests, :tenant_id, :integer
        add_column :maintenance_requests, :place_list_item_id, :integer
  end
end
