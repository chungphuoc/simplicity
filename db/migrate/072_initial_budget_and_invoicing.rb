class InitialBudgetAndInvoicing < ActiveRecord::Migration
  def self.up
        add_column :maintenance_requests, :budget_name, :string
  end

  def self.down
        remove_column :maintenance_requests, :budget_name
  end
end
