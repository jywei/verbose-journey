class AddPrivacyPolicyToAdminSiteConfigs < ActiveRecord::Migration
  def change
  	add_column :admin_site_configs, :privacy_policy, :text
  end
end
