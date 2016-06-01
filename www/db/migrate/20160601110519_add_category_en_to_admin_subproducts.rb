class AddCategoryEnToAdminSubproducts < ActiveRecord::Migration
  def change
    add_column :admin_subproducts, :category_en, :string
  end
end
