class LinkTasksAndMtRequests < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :mt_company_task_id, :integer;
        add_column :mt_company_tasks, :maintenance_request_id, :integer;
  end

  def self.down
        remove_column :maintenance_requests, :mt_company_task_id;
        remove_column :mt_company_tasks, :maintenance_request_id;
  end
end
