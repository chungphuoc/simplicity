class AddingDisableChecks < ActiveRecord::Migration
  def self.up
      add_column :mt_companies, :disable_checks, :boolean, :default=>false;
      add_column :buildings, :disable_checks, :boolean, :default=>false;
  end

  def self.down
      remove_column :mt_companies, :disable_checks;
      remove_column :buildings, :disable_checks;
  end
end
