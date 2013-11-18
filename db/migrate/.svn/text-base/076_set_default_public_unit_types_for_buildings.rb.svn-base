class SetDefaultPublicUnitTypesForBuildings < ActiveRecord::Migration
  def self.up
      Building.find(:all).each do | building |
          if ( building.default_public_unit_type.nil? )
              # find the unit type
              ut = nil;
              
              if ( building.owner != nil )
                  building.owner.public_unit_types.each do | put |
                     ut = put if put.name.index( building.hr_address );
                  end
                  if ( ut != nil )
                      building.default_public_unit_type = ut;
                      puts building.hr_address + " => " + ut.name;
                      building.save!
                  end
              end
          end
      end
  end

  def self.down
      Building.find(:all).each{ |b| b.default_public_unit_type = nil; b.save! }
  end
end
