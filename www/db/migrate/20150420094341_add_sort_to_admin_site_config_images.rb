class AddSortToAdminSiteConfigImages < ActiveRecord::Migration
  def change
  	add_column :admin_site_config_images, :sort, :integer
  end
end
