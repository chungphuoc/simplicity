class CreateCars < ActiveRecord::Migration
    def self.up
        create_table :cars do |t|
            t.column :number,      :string;
            t.column :description, :text;
            t.column :tenant_id,   :integer;
            t.column :business_id, :integer;
        end
    end

    def self.down
        drop_table :cars
    end
end
