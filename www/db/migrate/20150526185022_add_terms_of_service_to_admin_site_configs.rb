class AddTermsOfServiceToAdminSiteConfigs < ActiveRecord::Migration
  def change
  	add_column :admin_site_configs, :terms_of_service, :text
  end
end
