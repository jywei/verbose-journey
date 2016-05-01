class AddShowProductsReadMoreToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :show_products_read_more, :boolean, :default => false
  end
end
