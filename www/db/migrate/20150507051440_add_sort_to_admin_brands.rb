class AddSortToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :sort, :integer
  end
end
