class AddMainVisualLogoIsShowToAdminSiteConfigs < ActiveRecord::Migration
  def change
  	add_column :admin_site_configs, :main_visual_logo_is_show, :boolean, :default => false
  end
end
