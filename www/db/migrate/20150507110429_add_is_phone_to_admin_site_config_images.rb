class AddIsPhoneToAdminSiteConfigImages < ActiveRecord::Migration
  def change
  	add_column :admin_site_config_images, :is_phone, :boolean, :default => false 
  end
end
