class CreateAdminSubproductImages < ActiveRecord::Migration
  def change
    create_table :admin_subproduct_images do |t|
      t.integer :subproduct_id
      t.string :file

      t.timestamps
    end
  end
end
