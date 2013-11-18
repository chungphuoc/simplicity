class CreateBusinessBuildings < ActiveRecord::Migration
    def self.up        
        add_column :buildings, :type, :string, :default=>"Building";
        add_column :buildings, :building_owner_id, :integer;
        add_column :buildings, :total_area, :integer;
        add_column :buildings, :total_unit_num, :integer;
    end

    def self.down
        remove_column :buildings, :type;
        remove_column :buildings, :owner_id;
        remove_column :buildings, :total_area;
        remove_column :buildings, :total_unit_num;
    end
end
