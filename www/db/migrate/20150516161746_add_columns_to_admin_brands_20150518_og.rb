class AddColumnsToAdminBrands20150518Og < ActiveRecord::Migration
  def change
	add_column :admin_brands, :og_title, :string
	add_column :admin_brands, :og_description, :text
	add_column :admin_brands, :og_image, :string
  end
end
