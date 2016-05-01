class Admin::Image < ActiveRecord::Base
	mount_uploader :file, ImageUploader

	has_one :site_config_image , dependent: :destroy
	has_one :site_config ,  :through => :site_config_image

	has_one :product_image , dependent: :destroy
	has_one :product ,  :through => :product_image

	include Rails.application.routes.url_helpers


	def to_jq_upload
		{
			"id"                  =>self.id,
			"name"        => self.file.filename,
			"size"        => read_attribute(:size),
			"url"         => self.file.url,
			"small_url"   => self.file.small.url,
			"delete_url"  => admin_image_path(self, :format=>:json),
			"delete_type" => "DELETE"
		}
	end

end
