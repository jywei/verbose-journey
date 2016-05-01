class CreateAdminOgMainPages < ActiveRecord::Migration
  def change
    create_table :admin_og_main_pages do |t|
      t.string :home_title
      t.text :home_description
      t.string :home_image
      t.string :about_title
      t.text :about_description
      t.string :about_image
      t.string :contact_title
      t.text :contact_description
      t.string :contact_image
      t.string :store_title
      t.text :store_description
      t.string :store_image
      t.string :news_title
      t.text :news_description
      t.string :news_image
      t.string :brand_title
      t.text :brand_description
      t.string :brand_image

      t.timestamps
    end
  end
end
