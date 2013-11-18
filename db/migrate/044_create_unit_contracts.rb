class CreateUnitContracts < ActiveRecord::Migration
    def self.up
        create_table :unit_contracts do |t|
            t.column :business_id, :integer;
            t.column :start_date, :date;
            t.column :end_date, :date;
            t.column :mode, :integer; # SOLD / RENTED / somthing else? use class accessors to maintain record validity.
        end
    end

    def self.down
        drop_table :unit_contracts
    end
end
