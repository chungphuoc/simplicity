class AddingUsers < ActiveRecord::Migration 
    def self.up 
        create_table :users do |t| 
            t.column :username, :string
            t.column :hashed_password, :string 
            t.column :salt, :string 
            t.column :description, :text
            t.column :user_type, :string   # full manager, AKHZAKOT only, Kablan, etc.
            t.column :first_name, :string
            t.column :surname, :string
            t.column :contact_info, :string
        end 
    end 
    
    def self.down 
        drop_table :users 
    end 
end 
