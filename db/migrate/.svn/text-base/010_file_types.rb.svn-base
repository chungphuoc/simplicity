class FileTypes < ActiveRecord::Migration
    def self.up
      add_column :tenant_posts, :file_suffix, :string
      add_column :announcements, :file_suffix, :string
    end

    def self.down
      add_column :tenant_posts, :file_suffix
      add_column :announcements, :file_suffix
    end
end
