class MtReqHistoryItemAdditions < ActiveRecord::Migration
    def self.up
        add_column :maintenance_request_history_items, :old_state_data, :string
        add_column :maintenance_request_history_items, :company_private, :boolean, :default=>false;
    end

    def self.down
        remove_column :maintenance_request_history_items, :old_state_data
        remove_column :maintenance_request_history_items, :company_private
    end
end
