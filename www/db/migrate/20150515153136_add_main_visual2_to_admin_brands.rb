class AddMainVisual2ToAdminBrands < ActiveRecord::Migration
  def change
  	add_column :admin_brands, :main_visual2, :string
  end
end
