class CreateLocalizedEntries < ActiveRecord::Migration
    def self.up
        create_table :localized_entries, :id=>false, :primary_key=>"entry" do |t|
          t.column :entry, :string
          t.column :value, :string
        end
    end

    def self.down
        drop_table :localized_entries
    end
end
