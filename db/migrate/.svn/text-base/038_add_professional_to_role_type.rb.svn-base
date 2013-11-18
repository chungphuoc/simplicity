class AddProfessionalToRoleType < ActiveRecord::Migration
  def self.up
      add_column :mt_company_worker_roles, :professional, :boolean, :deafult=>false;
  end

  def self.down
      remove_column :mt_company_worker_roles, :professional;
  end
end
