class CreateTenants < ActiveRecord::Migration
  def self.up
    create_table :tenants do |t|
      t.column :first_name, :string # private name
      t.column :surname, :string    # family name
      t.column :phone, :string      # landline phone (BEZEQ)
      t.column :fax, :string        
      t.column :mobile, :string     #pelephone
      t.column :email, :string
      t.column :site, :string
      t.column :about, :text        # descriptive text of the person
      t.column :flat_id, :integer   # id of the flat (possible)
    end
    
    
  end

  def self.down
    drop_table :tenants
  end
end
