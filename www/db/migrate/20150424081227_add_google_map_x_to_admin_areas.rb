class AddGoogleMapXToAdminAreas < ActiveRecord::Migration
  def change
  	add_column :admin_areas, :google_map_x, :float
  end
end
