class AddingContextToSuggestion < ActiveRecord::Migration
  def self.up
      add_column :suggestions, :ctrl, :string;
      add_column :suggestions, :actn, :string;
  end

  def self.down
      remove_column :suggestions, :ctrl;
      remove_column :suggestions, :actn;
  end
end
