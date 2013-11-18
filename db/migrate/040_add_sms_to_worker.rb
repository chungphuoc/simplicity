class AddSmsToWorker < ActiveRecord::Migration
    def self.up
        add_column :mt_company_workers, :sms_urgency, :integer, :default=>5;
    end

    def self.down
        remove_column :mt_company_workers, :sms_urgency;
    end
end
