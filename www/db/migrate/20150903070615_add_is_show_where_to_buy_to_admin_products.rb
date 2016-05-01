class AddIsShowWhereToBuyToAdminProducts < ActiveRecord::Migration
  def change
  	add_column :admin_products, :is_show_where_to_buy, :boolean, :default => false
  end
end
