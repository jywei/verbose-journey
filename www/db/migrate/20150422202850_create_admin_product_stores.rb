class CreateAdminProductStores < ActiveRecord::Migration
  def change
    create_table :admin_product_stores do |t|
      t.integer :product_id
      t.integer :store_id

      t.timestamps
    end
  end
end
