class CreateAdminHistories < ActiveRecord::Migration
  def change
    create_table :admin_histories do |t|
      t.string :content

      t.timestamps
    end
  end
end
