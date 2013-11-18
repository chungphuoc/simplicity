class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :title, :string
      t.column :published_on, :date
      t.column :attachment_url, :string
      t.column :state, :boolean         # true: display. False: don't display
      t.column :tanent_id, :integer     # id of the poster. if null, the post was done by the VAAD.
      t.column :type, :string, :limit=>10 # is this a news post or an announcment?
    end
  end

  def self.down
    drop_table :posts
  end
end
