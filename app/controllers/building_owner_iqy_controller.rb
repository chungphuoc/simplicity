# controller for respoding to IQY queries for building owners.
class BuildingOwnerIqyController < ApplicationController
    layout 'iqy'
    
    TYPE_BUSINESSES     = "businesses"
    TYPE_CONTRACTS      = "contracts"
    TYPE_BUSINESS_USERS = "business_users"
    TYPE_BUILDINGS      = "buildings"
    
    before_filter :ensure_owner_exists, :except=>:owner_not_found
    
    def hello
        render_text "hello #{@owner.hr_name} world"
    end
    
    def businesses
        @businesses = @owner.businesses
    end
    
    def contracts
        @contracts = @owner.contracts
    end
    
    def business_users
        businesses = @owner.businesses;
        @users = [];
        businesses.each{ |b| @users<< b.users }
        @users.flatten!
    end
    
    def buildings
        @buildings = @owner.buildings
    end
    
    def owner_not_found
        render_text "owner not found"
    end
    
    private
    
    # populates @owner with the correct building owner, 
    # or redirects if the owner is not found.
    # TODO also check for pasword.
    def ensure_owner_exists
        begin
            @owner = BuildingOwner.find_by_username(params[:username]);
            throw Exception if @owner.nil? 
        rescue
            redirect_to :action=>"owner_not_found";
            return false;
        end
        
        return true;
    end

    
end
