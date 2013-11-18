class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
        t.column :number, :string;
        t.column :street, :string;
        t.column :city, :string;
        t.column :zip_code, :string, :limit=>5;
        t.column :welcome_note, :text;  # welcome text in the homepage
        t.column :directions, :text;    # how to get there
        t.column :eng_city, :string;    # -+
        t.column :eng_street, :string;  #  +=> fields for the url
        t.column :eng_number, :string;  # -+
        t.column :map_extension, :string;
    end
    
    add_column :announcements, :building_id, :integer;
    add_column :contact_people, :building_id, :integer;
    add_column :cp_categories, :building_id, :integer;
    add_column :flats, :building_id, :integer;
    add_column :tenants, :building_id, :integer;
    add_column :maintenance_requests, :building_id, :integer;
    add_column :tenant_posts, :building_id, :integer;
    add_column :place_list_items, :building_id, :integer;
    add_column :users, :building_id, :integer;
  end

  def self.down
    drop_table :buildings

    remove_column :announcements, :building_id;
    remove_column :contact_people, :building_id;
    remove_column :cp_categories, :building_id;
    remove_column :flats, :building_id;
    remove_column :maintenance_requests, :building_id;
    remove_column :tenant_posts, :building_id;
    remove_column :place_list_items, :buildin_id;
    remove_column :users, :building_id;
  end
end
