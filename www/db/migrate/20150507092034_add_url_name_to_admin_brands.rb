class AddUrlNameToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :url_name, :string
  end
end
