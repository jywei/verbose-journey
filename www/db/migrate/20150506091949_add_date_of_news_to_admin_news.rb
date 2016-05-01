class AddDateOfNewsToAdminNews < ActiveRecord::Migration
  def change
  	add_column :admin_news, :date_of_news, :date
  end
end
