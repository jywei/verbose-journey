class AddPhotoToAdminStaffs < ActiveRecord::Migration
  def change
  	add_column :admin_staffs, :photo, :string
  end
end
