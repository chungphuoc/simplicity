class CreateCpCategories < ActiveRecord::Migration
  def self.up
    create_table :cp_categories do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :cp_categories
  end
end
