class CreateAdminSubproducts < ActiveRecord::Migration
  def change
    create_table :admin_subproducts do |t|
      t.string :category
      t.integer :product_id

      t.timestamps
    end
  end
end
