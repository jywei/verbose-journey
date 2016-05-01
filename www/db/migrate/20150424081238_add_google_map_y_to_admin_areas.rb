class AddGoogleMapYToAdminAreas < ActiveRecord::Migration
  def change
  	add_column :admin_areas, :google_map_y, :float
  end
end
