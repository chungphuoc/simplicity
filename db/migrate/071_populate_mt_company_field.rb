class PopulateMtCompanyField < ActiveRecord::Migration
  def self.up        
        MaintenanceRequest.find_all().each{|r|
            if r.building.nil?
                puts "#{r.id} has no building"
            else
                r.mt_company = r.building.mt_company
                if r.save
                    puts "#{r.id} updated"
                else
                    puts "Error updateing #{r.id}"
                end
            end
        }
  end

  def self.down
  end
end
