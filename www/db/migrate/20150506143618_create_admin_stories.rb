class CreateAdminStories < ActiveRecord::Migration
  def change
    create_table :admin_stories do |t|
      t.string :title
      t.string :title2
      t.text :content
      t.string :button_text
      t.string :link_url

      t.timestamps
    end
  end
end
