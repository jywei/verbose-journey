class AddSlogan2ToAdminStaffs < ActiveRecord::Migration
  def change
  	add_column :admin_staffs, :slogan2, :string
  end
end
