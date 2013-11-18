class AddContactInfoToUsers < ActiveRecord::Migration
  def self.up
        add_column :users, :mobile,  :string
        add_column :users, :phone,   :string
        add_column :users, :email,   :string
        add_column :users, :address, :text
  end

  def self.down
        remove_column :users, :mobile
        remove_column :users, :phone
        remove_column :users, :email
        remove_column :users, :address
  end
end
