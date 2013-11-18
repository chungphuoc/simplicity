class CreateMaintenanceRequestHistoryItems < ActiveRecord::Migration
  def self.up
    create_table :maintenance_request_history_items do |t|
      t.column :action_type, :string, :limit=>16    # urgency change / mew asignee....
      t.column :acting_user_data, :string           # static text showing the user who commited the change. Allows us to keep history of deleted users.
      t.column :acting_user_id, :integer            # id of acting user (may be, or lead to, nil)
      t.column :acting_user_type, :string           # type of acting user  (may be, or lead to, nil)
      t.column :maintenance_request_id, :integer    # id of the mt_req we belong to
      t.column :remarks, :text                      # remarks, textual by user
      t.column :new_state_data, :string             # parsable string declaring what was the state after this change (i.e Assignee - moshe/12/USER)
      t.column :created_on, :datetime               # when was the change recorded
    end
  end

  def self.down
    drop_table :maintenance_request_history_items
  end
end
