class AddColumnsToAdminAbouts < ActiveRecord::Migration
  def change
    add_column :admin_abouts, :title_area_en_1, :string
    add_column :admin_abouts, :content_area_en_1, :text
    add_column :admin_abouts, :title_area_en_2, :string
    add_column :admin_abouts, :content_area_en_2, :text
  end
end
