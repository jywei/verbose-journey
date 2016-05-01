class CreateAdminSiteConfigImages < ActiveRecord::Migration
  def change
    create_table :admin_site_config_images do |t|
      t.integer :site_config_id
      t.integer :image_id

      t.timestamps
    end
  end
end
