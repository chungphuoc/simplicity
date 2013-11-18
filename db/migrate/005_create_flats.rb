class CreateFlats < ActiveRecord::Migration
  def self.up
    create_table :flats do |t|
      t.column :number, :integer
      t.column :floor, :integer
      t.column :state, :string, :limit=>21 # rented/ kablan...
      t.column :area, :integer
      t.column :base_payment, :decimal, :precision => 8, :scale => 2, :default => 0 #base payment for the flat
    end
  end

  def self.down
    drop_table :flats
  end
end
