class AddColumnsToAdminSubproducts < ActiveRecord::Migration
  def change
    add_column :admin_subproducts, :title, :string
    add_column :admin_subproducts, :title_en, :string
  end
end
