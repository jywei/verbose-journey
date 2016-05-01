include ActionView::Helpers::SanitizeHelper
class Admin::Brand < ActiveRecord::Base
	mount_uploader :main_visual, ImageUploader
	mount_uploader :image_of_brand, ImageUploader
	mount_uploader :image_of_logo, ImageUploader
	mount_uploader :main_visual2, ImageUploader
	mount_uploader :og_image, ImageUploader
	has_many :products

	validates_presence_of :url_name

	def get_customization
		if self.is_customization &&self.cn_name.present?
			self.cn_name
		else
			"default"
		end
	end

	def select_name
		'品牌 / ' + self.name.upcase
	end

	def get_short_description_2
		if strip_tags(self.description_2).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 60
			strip_tags(self.description_2).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..60] + '......'
		else
			strip_tags(self.description_2).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
		end
	end

	def get_og_image
		if self.og_image.present?
			self.og_image.large.url
		else
			self.main_visual.large.url
		end
	end
end
