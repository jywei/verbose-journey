class AddAttToAdminNews < ActiveRecord::Migration
  def change
    add_column :admin_news, :is_order_form, :boolean
  end
end
