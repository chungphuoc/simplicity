class AddingBusinessesToMtReq < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :reporter_id,   :integer;
        add_column :maintenance_requests, :reporter_type, :string;
        add_column :maintenance_requests, :place_id,      :integer;
        add_column :maintenance_requests, :place_type,    :string;

        add_column :maintenance_requests, :business_id,   :integer;
  end

  def self.down
        remove_column :maintenance_requests, :reporter_id;
        remove_column :maintenance_requests, :reporter_type;
        remove_column :maintenance_requests, :place_id;  
        remove_column :maintenance_requests, :place_type;
        
        remove_column :maintenance_requests, :business_id;
  end
end
