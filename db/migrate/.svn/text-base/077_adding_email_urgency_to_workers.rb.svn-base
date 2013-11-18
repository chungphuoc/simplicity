class AddingEmailUrgencyToWorkers < ActiveRecord::Migration
  def self.up
        add_column :mt_company_workers, :email_urgency, :integer, :default=>5
  end

  def self.down
        remove_column :mt_company_workers, :email_urgency
  end
end
