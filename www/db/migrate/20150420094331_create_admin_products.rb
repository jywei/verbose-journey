class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.string :name
      t.text :content
      t.string :main_visual
      t.integer :price
      t.integer :stock
      t.boolean :is_public
      t.integer :brand_id

      t.timestamps
    end
  end
end
