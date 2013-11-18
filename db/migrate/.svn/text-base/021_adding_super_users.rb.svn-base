class AddingSuperUsers < ActiveRecord::Migration
    def self.up
        create_table :super_users do |t|
            t.column :username, :string;
            t.column :hashed_password, :string;
            t.column :salt, :string;
        end
    end
    
    def self.down
        drop_table :super_users;
    end
end
