class AddRoleToTenant < ActiveRecord::Migration
  def self.up
      add_column :tenants, :role, :string
  end

  def self.down
      remove_column :tenants, :role
  end
end
