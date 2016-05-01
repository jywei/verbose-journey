class CreateAdminSubscribes < ActiveRecord::Migration
  def change
    create_table :admin_subscribes do |t|
      t.string :email

      t.timestamps
    end
  end
end
