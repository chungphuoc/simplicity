class RemovingPlis < ActiveRecord::Migration
  def self.up
    ok_to_drop = true;
    f = MaintenanceRequest.find_by_sql("SELECT * FROM maintenance_requests WHERE place_type='PlaceListItem'");
    f.each do | mt |
      if mt.place.nil?
        puts "Deleting mt_req ##{mt.id}"
        mt.destroy();
      else
        puts "mt #{mt.id} has a non-nil place #{mt.place.id}/#{mt.place.class.name}"
        ok_to_drop = false;
      end
    end
    drop_table(:place_list_items) if ok_to_drop;
  end

  def self.down
    create_table "place_list_items", :force => true do |t|
      t.column "place",          :string
      t.column "is_my_flat",     :boolean
      t.column "floor_relative", :boolean
      t.column "building_id",    :integer, :default => 0, :null => false
    end
  end
end
