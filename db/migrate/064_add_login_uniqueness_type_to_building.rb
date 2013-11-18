class AddLoginUniquenessTypeToBuilding < ActiveRecord::Migration
  def self.up
        add_column :buildings, :is_user_login_unique, :boolean, :default=>false
  end

  def self.down
        remove_column :buildings, :is_user_login_unique
  end
end
