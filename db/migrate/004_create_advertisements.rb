class CreateAdvertisements < ActiveRecord::Migration
  def self.up
    create_table :advertisements do |t|
      # t.column :name, :string
    end
  end

  def self.down
    drop_table :advertisements
  end
end
