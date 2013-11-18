class AddFixTimeToMtReq < ActiveRecord::Migration
    def self.up
        add_column :maintenance_requests, :solved_on, :date
    end

    def self.down
        remove_column :maintenance_requests, :solved_on
    end
end
