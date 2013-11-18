class PopulateBuildingIds < ActiveRecord::Migration
  def self.up
      User.find_all().each { |user|
          unless ( user.business.nil? ) 
             user.building = user.business.building;
             user.save 
          end
      }
  end

  def self.down
  end
end
