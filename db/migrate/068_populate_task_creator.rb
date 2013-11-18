class PopulateTaskCreator < ActiveRecord::Migration
  def self.up
      MtCompanyTask.find_all().each{ |tsk|
          tsk.creator = tsk.building_owner;
          if tsk.save
              puts "Updated task #{tsk.id}"
          end
      }
  end

  def self.down
  end
end
