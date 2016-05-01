class CreateAdminNews < ActiveRecord::Migration
  def change
    create_table :admin_news do |t|
      t.string :title
      t.text :content
      t.string :main_visual
      t.boolean :is_public

      t.timestamps
    end
  end
end
