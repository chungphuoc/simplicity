class SuggestionsAdded < ActiveRecord::Migration
  def self.up
      create_table :suggestions do |t|
        t.column :title, :string
        t.column :body, :text
        t.column :created_on, :date
      end
  end

  def self.down
      drop_table :suggestions
  end
end
