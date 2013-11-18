# controller for the REST api of mt companies.
class MtCompaniesIqyController < ApplicationController
    
    layout 'iqy'
    before_filter :ensure_mt_company_exists, :except=>"no_company_error";
    
    # report types
    TYPE_ALL_REQUESTS = "mt_reqs"
    TYPE_PENDING_REQUESTS = "pending_mt_reqs"
    TYPE_DEBIT_PENDING_REQUESTS = "debit_pending_mt_reqs"
    TYPE_WORKER_LIST = "worker_list"
    
    def hello
       render_text "Hello #{@mt_company.name} world" 
    end
    
    def mt_reqs
        # TODO validate user and it's permissions
        show_requests( create_mt_req_query )
    end
    
    def pending_mt_reqs
        qry = MtRequestQuery.create_pending_query( @mt_company );
        show_requests( qry );
    end
    
    def debit_pending_mt_reqs
        qry = MtRequestQuery.new
        qry.add_mt_company( @mt_company );
        qry.sort_by = MtRequestQuery::KEY_SOLVED_ON;
        qry.add_state( MaintenanceRequest::DEBIT_PENDING );
        show_requests( qry );
    end
    
    def worker_list
        @workers = AROPagee.new(@mt_company, :workers).get_all
    end
    
    
    def no_company_error
        render :text=>"Bad Company name", :status=>404;
    end
    
    ###########
    # privacy #
    ###########
    private
    
    def show_requests( qry )
        @reqs = qry.get_all
        render :action=>"mt_reqs"
    end
    
    # creates the MtRequestQuery and fills in the initial fields
    def create_mt_req_query
        qry = MtRequestQuery.new();
        qry.add_mt_company( @mt_company );
        return qry
    end
    
    # makes sure we have an mt_company. fills @mt_company, or redirects
    def ensure_mt_company_exists
        begin
            @mt_company = MtCompany.find_by_eng_name(params[:eng_name]);
            throw Exception if @mt_company.nil? 
        rescue
            redirect_to :action=>"no_company_error";
            return false;
        end
        
        return true;
    end
    
end
