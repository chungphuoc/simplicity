class CreateBuildingOwners < ActiveRecord::Migration
    def self.up
        create_table :building_owners do |t|
            t.column :username, :string;
            t.column :hashed_password, :string;
            t.column :salt, :string;
            t.column :first_name, :string;
            t.column :surname, :string;
            t.column :mobile, :string;
            t.column :phone, :string;
            t.column :email, :string;
            t.column :fax, :string;
            t.column :address, :text;
        end
    end
    
    def self.down
        drop_table :building_owners
    end
end
