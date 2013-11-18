# Adding a type code to the businesses. This will later evolve to 
# a full occupier type.
class AddBusinessType < ActiveRecord::Migration
  def self.up
        add_column :businesses, :type_code, :string
  end

  def self.down
        remove_column :businesses, :type_code
  end
end
