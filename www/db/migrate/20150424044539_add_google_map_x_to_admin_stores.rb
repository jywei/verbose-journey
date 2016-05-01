class AddGoogleMapXToAdminStores < ActiveRecord::Migration
  def change
  	add_column :admin_stores, :google_map_x, :float
  end
end
