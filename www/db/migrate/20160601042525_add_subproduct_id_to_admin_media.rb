class AddSubproductIdToAdminMedia < ActiveRecord::Migration
  def change
    add_column :admin_media, :subproduct_id, :integer
  end
end
