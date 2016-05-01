class CreateAdminInfos < ActiveRecord::Migration
  def change
    create_table :admin_infos do |t|
      t.string :title
      t.text :content
      t.string :link_url

      t.timestamps
    end
  end
end
