class CreateBuildingUnits < ActiveRecord::Migration
    def self.up
        create_table :building_units do |t|
            t.column :building_id, :integer;
            t.column :unit_type_id, :integer;
            t.column :area, :integer;
            t.column :unit_count, :integer, :default=>1;
            t.column :floor, :integer;
            t.column :name, :string;
            t.column :remark, :text;
        end
    end

    def self.down
        drop_table :building_units
    end
end
