class AddPublicToBuildingUnitTypes < ActiveRecord::Migration
  def self.up
    add_column( :unit_types, :is_public, :boolean, :default=>false );
    
    blds_public_unit_types = {};
    pli_to_bu = {};
    
    # iterate over all place_list_items, and make them proper places.
    Building.find(:all).each do | bld |
      # create new unit type
      put = UnitType.new();
      put.name = "public_#{bld.hr_address}";
      put.building_owner = bld.building_owner;
      put.is_public = true;
      put.save!
      puts "Created unit type: #{put.name}";
      blds_public_unit_types[bld.id] = put;
      
      # create new places for those types.
      bld.place_list_items.each do | pli |
        unt = BuildingUnit.new();
        unt.name = pli.place;
        unt.unit_type = put;
        unt.building = bld;
        unt.save!;
        puts "created place: #{unt.name}"
        pli_to_bu[pli.id] = unt;
      end
    end
    
    # convert all the mt requests.
    MaintenanceRequest.find(:all).each do | mt_req |
      if ( mt_req.place.kind_of?(PlaceListItem) )
        if pli_to_bu[mt_req.place.id].nil?
          unt = BuildingUnit.new();
          unt.name = mt_req.place.place;
          unt.unit_type = blds_public_unit_types[mt_req.building.id];
          unt.building = mt_req.building;
          unt.save!;
          pli_to_bu[mt_req.place.id] = unt;
          mt_req.place = unt;
          puts "created place: #{unt.name}"
        else
          mt_req.place = pli_to_bu[mt_req.place.id]
        end
        mt_req.save!
        puts "Migrated mt_req #{mt_req.id}"
      end
    end
    
  end

  def self.down
    remove_column(:unit_types, :is_public);
  end
end
