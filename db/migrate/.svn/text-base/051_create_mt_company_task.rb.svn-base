class CreateMtCompanyTask < ActiveRecord::Migration
  def self.up
        create_table :mt_company_tasks do |t|
          t.column :from_date, :date
          t.column :until_date, :date
          t.column :status, :integer
          t.column :title, :string
          t.column :description, :text
          t.column :created_on, :datetime
          t.column :completed_on, :datetime
          t.column :building_id, :integer
          t.column :mt_company_id, :integer
          t.column :building_owner_id, :integer
        end
  end

  def self.down
        drop_table :mt_company_tasks
  end
end
