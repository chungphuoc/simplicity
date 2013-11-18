class AnnouncmentsAndTanentPosts < ActiveRecord::Migration
  def self.up
     
      create_table :tenant_posts do | t | 
        t.column :title, :string
        t.column :body, :text
        t.column :published_on, :date
        t.column :display_on_site, :boolean
        t.column :link, :string
        t.column :file, :string
        t.column :tenant_id, :string
      end
      
      create_table :announcements do | t |
         t.column :title, :string
         t.column :body, :text
         t.column :published_on, :date
         t.column :display_on_site, :boolean
         t.column :link, :string
         t.column :file, :string
      end
  end

  def self.down
      drop_table :announcements
      drop_table :tenant_posts
  end
end
