class CreateAdminMedia < ActiveRecord::Migration
  def change
    create_table :admin_media do |t|
      t.string :file_name

      t.timestamps
    end
  end
end
