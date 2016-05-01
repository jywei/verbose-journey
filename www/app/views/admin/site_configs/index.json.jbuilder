json.array!(@admin_site_configs) do |admin_site_config|
  json.extract! admin_site_config, :id, :title, :description, :name, :tax_id, :phone, :fax, :address, :email, :website_url, :facebook_url
  json.url admin_site_config_url(admin_site_config, format: :json)
end
