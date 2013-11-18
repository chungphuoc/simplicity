class CreateCondoQuestions < ActiveRecord::Migration
  def self.up
    create_table :condo_questions do |t|
        t.column :question, :string
        t.column :answer, :text
        t.column :link, :string
        t.column :display_on_site, :boolean
    end
  end

  def self.down
    drop_table :condo_questions
  end
end
