class AddIsPublicToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :is_public, :boolean
  end
end
