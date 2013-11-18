class AttachBuildingsToMtCompanies < ActiveRecord::Migration
    def self.up
        add_column :buildings, :mt_company_id, :integer
        add_column :buildings, :mt_building_manager_id, :integer
    end

    def self.down
        remove_column :buildings, :mt_company_id
        remove_column :buildings, :mt_building_manager_id
    end
end
