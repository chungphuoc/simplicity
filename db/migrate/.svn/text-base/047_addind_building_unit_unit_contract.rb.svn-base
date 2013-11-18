class AddindBuildingUnitUnitContract < ActiveRecord::Migration
    def self.up
        create_table :building_units_unit_contracts, :id=>false do |t|
          t.column :building_unit_id, :integer
          t.column :unit_contract_id, :integer
        end
    end

    def self.down
        drop_table :building_units_unit_contracts
    end
end
