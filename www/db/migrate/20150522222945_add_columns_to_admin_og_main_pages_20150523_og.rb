class AddColumnsToAdminOgMainPages20150523Og < ActiveRecord::Migration
  def change
	add_column :admin_og_main_pages, :home_image2, :string
	add_column :admin_og_main_pages, :home_image3, :string
	add_column :admin_og_main_pages, :about_image2, :string
	add_column :admin_og_main_pages, :about_image3, :string
	add_column :admin_og_main_pages, :contact_image2, :string
	add_column :admin_og_main_pages, :contact_image3, :string
	add_column :admin_og_main_pages, :store_image2, :string
	add_column :admin_og_main_pages, :store_image3, :string
	add_column :admin_og_main_pages, :news_image2, :string
	add_column :admin_og_main_pages, :news_image3, :string
	add_column :admin_og_main_pages, :brand_image2, :string
	add_column :admin_og_main_pages, :brand_image3, :string
  end
end
