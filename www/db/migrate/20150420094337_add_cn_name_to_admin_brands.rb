class AddCnNameToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :cn_name, :string
  end
end
