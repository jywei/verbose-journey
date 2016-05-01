class AddBrandsListLogoIsShowToAdminSiteConfigs < ActiveRecord::Migration
  def change
  	add_column :admin_site_configs, :brands_list_logo_is_show, :boolean, :default => false 
  end
end
