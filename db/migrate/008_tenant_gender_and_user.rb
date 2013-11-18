class TenantGenderAndUser < ActiveRecord::Migration
  def self.up
      add_column :tenants, :is_male, :boolean
      add_column :tenants, :username, :string
      add_column :tenants, :hashed_password, :string
      add_column :tenants, :salt, :string
  end

  def self.down
      remove_column :tenants, :is_male
      remove_column :tenants, :username
      remove_column :tenants, :hashed_password
      remove_column :tenants, :salt
  end
end
