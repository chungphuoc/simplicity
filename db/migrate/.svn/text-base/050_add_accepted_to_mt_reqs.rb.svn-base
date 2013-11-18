class AddAcceptedToMtReqs < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :accepted, :boolean, :default=>false;
  end

  def self.down
        remove_column :maintenance_requests, :accepted;
  end
end
