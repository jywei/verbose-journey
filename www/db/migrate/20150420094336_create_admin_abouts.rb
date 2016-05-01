class CreateAdminAbouts < ActiveRecord::Migration
  def change
    create_table :admin_abouts do |t|
      t.string :title_area_1
      t.text :content_area_1
      t.string :title_area_2
      t.text :content_area_2

      t.timestamps
    end
  end
end
