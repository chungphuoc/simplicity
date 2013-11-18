class MtReqSolvedOnToDatetime < ActiveRecord::Migration
  def self.up
        remove_column :maintenance_requests, :solved_on;
        add_column :maintenance_requests, :solved_on, :datetime;
  end

  def self.down
        remove_column :maintenance_requests, :solved_on;
        add_column :maintenance_requests, :solved_on, :date;
  end
end
