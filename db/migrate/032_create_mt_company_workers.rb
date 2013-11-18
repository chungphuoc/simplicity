class CreateMtCompanyWorkers < ActiveRecord::Migration
    def self.up
        create_table :mt_company_workers do |t|
            t.column :first_name, :string
            t.column :surname, :string
            t.column :mobile, :string
            t.column :beeper, :string
            t.column :username, :string
            t.column :hashed_password, :string
            t.column :salt, :string

            t.column :mt_company_role_id, :integer
            t.column :mt_company_id, :integer
        end
    end

    def self.down
        drop_table :mt_company_workers
    end
end
