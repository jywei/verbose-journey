class AddTitle2ToAdminProducts < ActiveRecord::Migration
  def change
  	add_column :admin_products, :title2, :text
  end
end
