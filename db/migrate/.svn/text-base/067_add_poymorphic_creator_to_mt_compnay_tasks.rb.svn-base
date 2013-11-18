class AddPoymorphicCreatorToMtCompnayTasks < ActiveRecord::Migration
  def self.up
        add_column :mt_company_tasks, :creator_id, :integer
        add_column :mt_company_tasks, :creator_type, :string
  end

  def self.down
        remove_column :mt_company_tasks, :creator_id
        remove_column :mt_company_tasks, :creator_type
  end
end
