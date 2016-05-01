class CreateAdminAreas < ActiveRecord::Migration
  def change
    create_table :admin_areas do |t|
      t.string :city

      t.timestamps
    end
  end
end
