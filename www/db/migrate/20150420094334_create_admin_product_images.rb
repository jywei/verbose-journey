class CreateAdminProductImages < ActiveRecord::Migration
  def change
    create_table :admin_product_images do |t|
      t.integer :product_id
      t.integer :image_id

      t.timestamps
    end
  end
end
