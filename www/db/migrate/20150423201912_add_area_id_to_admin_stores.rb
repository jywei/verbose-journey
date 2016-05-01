class AddAreaIdToAdminStores < ActiveRecord::Migration
  def change
  	add_column :admin_stores, :area_id, :integer
  end
end
