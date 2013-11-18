class DropConstraints < ActiveRecord::Migration
  def self.up
    #  execute "ALTER TABLE tenants DROP FOREIGN KEY fk_tenants_flats";
    #  execute "ALTER TABLE contact_people DROP FOREIGN KEY fk_contact_people_cp_categories";
  end

  def self.down
    #execute "alter table tenants add constraint fk_tenants_flats foreign key (flat_id) references flats(id)"
    #execute "alter table contact_people add constraint fk_contact_people_cp_categories foreign key (cp_category_id) references cp_categories(id)"
  end
end
