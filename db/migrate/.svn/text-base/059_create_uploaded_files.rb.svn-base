class CreateUploadedFiles < ActiveRecord::Migration
  def self.up
    create_table :uploaded_files do |t|
      t.column :title, :string
      t.column :name, :string
      t.column :size, :integer
      t.column :upload_date, :datetime
      t.column :mime_type, :string
      t.column :uploader_id, :integer
      t.column :uploader_type, :string
      t.column :part_of_id, :integer
      t.column :part_of_type, :string
    end
  end

  def self.down
    drop_table :uploaded_files
  end
end
