class CreateContactPeople < ActiveRecord::Migration
  def self.up
    create_table :contact_people do |t|
        t.column :first_name, :string # private name
        t.column :surname, :string    # family name
        t.column :company, :string    # company he works for
        t.column :phone, :string      # landline phone (BEZEQ)
        t.column :fax, :string        
        t.column :mobile, :string     #pelephone
        t.column :email, :string
        t.column :site, :string
        t.column :about, :text        # descriptive text of the person
        t.column :address, :string
        t.column :cp_category_id, :integer, :null => false   # id of the category his person belongs to (i.e. KABLAN, SAPACK, etc.)
    end
  end

  def self.down
    drop_table :contact_people
  end
end
