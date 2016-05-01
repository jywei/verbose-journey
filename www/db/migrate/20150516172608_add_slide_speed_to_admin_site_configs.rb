class AddSlideSpeedToAdminSiteConfigs < ActiveRecord::Migration
  def change
  	add_column :admin_site_configs, :slide_speed, :integer, :default => 4000
  end
end
