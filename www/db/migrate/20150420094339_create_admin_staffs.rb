class CreateAdminStaffs < ActiveRecord::Migration
  def change
    create_table :admin_staffs do |t|
      t.string :name
      t.string :office
      t.string :slogan
      t.text :content
      t.integer :about_id

      t.timestamps
    end
  end
end
