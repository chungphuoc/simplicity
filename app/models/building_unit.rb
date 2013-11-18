class BuildingUnit < ActiveRecord::Base
    include Comparable;

    belongs_to  :building, :foreign_key=>"building_id";
    belongs_to  :unit_type;
    has_many    :maintenance_requests, :as=>:place;
    has_and_belongs_to_many :unit_contracts, :order=>"end_date";
    
    # return the business residing in the unit.
    def current_businesses
        ct = Localization::localizer.now()
        current_date = ::Date.new(ct.year, ct.month, ct.day)
        businesses = []
        unit_contracts.each do | uc |
            if ( (current_date >= uc.start_date) && 
                 ((uc.end_date.nil?) || (current_date < uc.end_date )) )
                 businesses << uc.business
            end
        end
        
        return businesses
    end
    
    def hr_name
        return name;
    end 
    
    def <=>( other_uc )
        return self.name <=> other_uc.name
    end
    
    def to_s
       return "/BuildingUnit ##{self.id} name=>#{self.name} building=>#{self.building.hr_address}/";
    end
end
