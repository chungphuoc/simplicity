class CrossAppChanges < ActiveRecord::Migration
    def self.up
        remove_column :maintenance_requests, :is_quite;
        add_column :maintenance_requests, :service_type, :integer, :default=>0; # fix, qoute, general inquiry(?)
        add_column :maintenance_requests, :place_free_text, :string;
        add_column :maintenance_requests, :budget_id, :integer; # 
        add_column :maintenance_requests, :qoute_text, :text; # "but moshe, why is it so expensive?"
        
        add_column :buildings, :forum_url, :string;
        
        add_column :mt_company_workers, :group_id, :integer;
        
        add_column :mt_company_tasks, :assignee_id, :integer;
        add_column :mt_company_tasks, :assignee_type, :string;
    end

    def self.down
        add_column :maintenance_requests, :is_quite, :boolean;
        remove_column :maintenance_requests, :place_free_text;
        remove_column :maintenance_requests, :budget_id;
        remove_column :buildings, :forum_url
        remove_column :mt_company_workers, :group_id
        remove_column :mt_company_tasks, :assignee_id
        remove_column :mt_company_tasks, :assignee_type
        remove_column :maintenance_requests, :service_type
        remove_column :maintenance_requests, :qoute_text
    end
end
