class AddUrlNameToAdminProducts < ActiveRecord::Migration
  def change
  	add_column :admin_products, :url_name, :string
  end
end
