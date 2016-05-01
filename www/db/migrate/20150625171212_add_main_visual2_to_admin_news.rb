class AddMainVisual2ToAdminNews < ActiveRecord::Migration
  def change
  	add_column :admin_news, :main_visual2, :string
  end
end
