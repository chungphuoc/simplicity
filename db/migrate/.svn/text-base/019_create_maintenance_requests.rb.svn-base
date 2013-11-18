class CreateMaintenanceRequests < ActiveRecord::Migration
    def self.up
        create_table :maintenance_requests do |t|
            t.column :tenant_id, :integer                       # tenant requesting. may be null
            t.column :user_id, :integer                         # user requesting. may be null
            t.column :title, :string                            # title of the request
            t.column :body, :text                               # body of the request
            t.column :created_on, :timestamp                    # when created
            t.column :place_list_item_id, :integer              # where is the problem - if the problem exists on 
            t.column :flat_id, :integer                         # flat where the problem is
            t.column :destination, :string, :default=>"VAAD"    # who should take care of this request (KABLAN, VAAD)
            t.column :solved_on, :timestamp                     # when solved
            t.column :solver, :string                           # who solved the problem (e.g. replaced the burnt lamp)
      end
    end

    def self.down
        drop_table :maintenance_requests
    end
end
