class AddColumnsToAdminStories < ActiveRecord::Migration
  def change
    add_column :admin_stories, :title_en, :string
    add_column :admin_stories, :content_en, :text
    add_column :admin_stories, :title_en_2, :string
    add_column :admin_stories, :content_2, :text
    add_column :admin_stories, :content_en_2, :text
    add_column :admin_stories, :title_3, :string
    add_column :admin_stories, :title_en_3, :string
    add_column :admin_stories, :content_3, :text
    add_column :admin_stories, :content_en_3, :text
  end
end
