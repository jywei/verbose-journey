class AddIsCustomizationToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :is_customization, :boolean
  end
end
