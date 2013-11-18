class CreateSharedDocuments < ActiveRecord::Migration
    def self.up
        create_table :shared_documents do |t|
            t.column :title, :string
            t.column :description, :text
            t.column :file_suffix, :string
            t.column :updated_on, :timestamp
            t.column :building_id, :integer
        end
    end
    
    def self.down
        drop_table :shared_documents
    end
end
