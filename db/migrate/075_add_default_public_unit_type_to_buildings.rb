class AddDefaultPublicUnitTypeToBuildings < ActiveRecord::Migration
  def self.up
    add_column(:buildings, :default_public_unit_type_id, :integer );
  end

  def self.down
    remove_column(:buildings, :default_public_unit_type_id);
  end
end
