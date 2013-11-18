class CreateMtCompanies < ActiveRecord::Migration
    def self.up
        create_table :mt_companies do |t|
            t.column :name, :string
            t.column :eng_name, :string
            t.column :address, :text
            t.column :contact_info, :text
            t.column :site, :string
            t.column :phone, :string
            t.column :about, :text
            t.column :image_extension, :string
        end
    end

    def self.down
        drop_table :mt_companies
    end
end
