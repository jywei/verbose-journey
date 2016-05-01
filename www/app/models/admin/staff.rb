class Admin::Staff < ActiveRecord::Base
	mount_uploader :photo, ImageUploader
	belongs_to :about
end
