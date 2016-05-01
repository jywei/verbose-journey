class CreateAdminSiteConfigs < ActiveRecord::Migration
  def change
    create_table :admin_site_configs do |t|
      t.string :title
      t.text :description
      t.string :name
      t.string :tax_id
      t.string :phone
      t.string :fax
      t.string :address
      t.string :email
      t.string :website_url
      t.string :facebook_url

      t.timestamps
    end
  end
end
