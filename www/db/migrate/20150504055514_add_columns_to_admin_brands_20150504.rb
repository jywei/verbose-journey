class AddColumnsToAdminBrands20150504 < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :slogan, :string
	add_column :admin_brands, :slogan_by, :string
	add_column :admin_brands, :title_1, :string
	add_column :admin_brands, :description_1, :string
	add_column :admin_brands, :title_2, :string
	add_column :admin_brands, :description_2, :string
	add_column :admin_brands, :image_of_brand, :string
	add_column :admin_brands, :image_of_logo, :string
  end
end
