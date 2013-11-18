class AddMtRequestState < ActiveRecord::Migration
  def self.up
      add_column :maintenance_requests, :state, :integer, :default=>0;
      add_column :maintenance_requests, :solving_worker_id, :integer;
      add_column :maintenance_requests, :remarks, :text;
      
      rename_column :maintenance_requests, :solved_on, :updated_on;
      
      remove_column :maintenance_requests, :user_id;
      remove_column :maintenance_requests, :solver;
      
  end

  def self.down
      remove_column :maintenance_requests, :state;
      remove_column :maintenance_requests, :solving_worker_id;
      remove_column :maintenance_requests, :remarks;

      rename_column :maintenance_requests, :updated_on, :solved_on;
      
      add_column :maintenance_requests, :user_id, :integer;
      add_column :maintenance_requests, :solver, :text;      
      
  end
end
