class CreateUnitTypes < ActiveRecord::Migration
    def self.up
        create_table :unit_types do |t|
            t.column :name, :string;
            t.column :building_owner_id, :integer;
        end
    end

    def self.down
        drop_table :unit_types
    end
end
