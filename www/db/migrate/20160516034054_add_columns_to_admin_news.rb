class AddColumnsToAdminNews < ActiveRecord::Migration
  def change
    add_column :admin_news, :title_en, :string
    add_column :admin_news, :content_en, :text
  end
end
