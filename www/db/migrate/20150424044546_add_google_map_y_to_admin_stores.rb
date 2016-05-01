class AddGoogleMapYToAdminStores < ActiveRecord::Migration
  def change
  	add_column :admin_stores, :google_map_y, :float
  end
end
