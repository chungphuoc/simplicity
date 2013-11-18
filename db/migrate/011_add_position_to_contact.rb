class AddPositionToContact < ActiveRecord::Migration
  def self.up
      add_column :contact_people, :position, :string
  end

  def self.down
      drop_column :contact_people, :position
  end
end
