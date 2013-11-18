class CreateMtCompanyWorkerRoles < ActiveRecord::Migration
    def self.up
        create_table :mt_company_worker_roles do |t|
            t.column :name, :string
            t.column :building_manager, :boolean # AV-Bait
            t.column :admin, :boolean          # Can manage the site
            
            t.column :mt_company_id, :integer
        end
    end

    def self.down
        drop_table :mt_company_worker_roles
    end
end
