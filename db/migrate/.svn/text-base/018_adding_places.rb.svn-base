class AddingPlaces < ActiveRecord::Migration
  def self.up
      create_table :place_list_items do |t|
          t.column :place, :string
          t.column :is_my_flat, :boolean
          t.column :floor_relative, :boolean
      end
  end

  def self.down
      drop_table :place_list_items
  end
end
