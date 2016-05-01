class Admin::OgMainPage < ActiveRecord::Base
	mount_uploader :home_image, ImageUploader
	mount_uploader :home_image2, ImageUploader
	mount_uploader :home_image3, ImageUploader
	mount_uploader :about_image, ImageUploader
	mount_uploader :about_image2, ImageUploader
	mount_uploader :about_image3, ImageUploader
	mount_uploader :contact_image, ImageUploader
	mount_uploader :contact_image2, ImageUploader
	mount_uploader :contact_image3, ImageUploader
	mount_uploader :store_image, ImageUploader
	mount_uploader :store_image2, ImageUploader
	mount_uploader :store_image3, ImageUploader
	mount_uploader :news_image, ImageUploader
	mount_uploader :news_image2, ImageUploader
	mount_uploader :news_image3, ImageUploader
	mount_uploader :brand_image, ImageUploader
	mount_uploader :brand_image2, ImageUploader
	mount_uploader :brand_image3, ImageUploader
end
