class CreateBusinesses < ActiveRecord::Migration
    def self.up
        create_table :businesses do |t|
            t.column :name,        :string;
            t.column :eng_name,    :string;
            t.column :description, :text;
            t.column :site,        :string;
            t.column :phone,       :string;
            t.column :fax,         :string;
            t.column :email,       :string;
            t.column :building_id, :integer;
        end

        add_column :users, :business_id, :integer;
    end

    def self.down
        drop_table :businesses
        remove_column :users, :business_id;
    end
end
