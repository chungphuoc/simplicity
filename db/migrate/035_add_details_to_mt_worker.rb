class AddDetailsToMtWorker < ActiveRecord::Migration
  def self.up
      add_column :mt_company_workers, :email, :string;
      add_column :mt_company_workers, :details, :text;
  end

  def self.down
      remove_column :mt_company_workers, :details;
      remove_column :mt_company_workers, :email;
  end
end
