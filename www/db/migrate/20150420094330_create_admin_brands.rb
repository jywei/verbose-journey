class CreateAdminBrands < ActiveRecord::Migration
  def change
    create_table :admin_brands do |t|
      t.string :name
      t.text :content
      t.string :main_visual

      t.timestamps
    end
  end
end
