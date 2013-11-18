class AddTimeToPosts < ActiveRecord::Migration
  def self.up
      change_column :tenant_posts, :published_on, :datetime
      change_column :announcements, :published_on, :datetime
  end

  def self.down
      change_column :tenant_posts, :published_on, :date
      change_column :announcements, :published_on, :date      
  end
end
