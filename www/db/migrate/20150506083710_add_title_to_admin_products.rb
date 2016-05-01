class AddTitleToAdminProducts < ActiveRecord::Migration
  def change
  	add_column :admin_products, :title, :text
  end
end
