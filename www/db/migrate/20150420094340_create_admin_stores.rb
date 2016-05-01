class CreateAdminStores < ActiveRecord::Migration
  def change
    create_table :admin_stores do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.integer :sort
      t.boolean :is_public

      t.timestamps
    end
  end
end
