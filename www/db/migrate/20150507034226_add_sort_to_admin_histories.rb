class AddSortToAdminHistories < ActiveRecord::Migration
  def change
  	add_column :admin_histories, :sort, :integer
  end
end
