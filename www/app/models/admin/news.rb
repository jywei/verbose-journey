include ActionView::Helpers::SanitizeHelper
class Admin::News < ActiveRecord::Base
	mount_uploader :main_visual, ImageUploader
	mount_uploader :main_visual2, ImageUploader

	def get_long_content
		if strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 500
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..500] + '......'
		else
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
		end
	end

	def get_long_content_en
		if strip_tags(self.content_en).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 500
			strip_tags(self.content_en).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..500] + '......'
		else
			strip_tags(self.content_en).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
		end
	end

	def get_short_content
		if strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 60
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..60] + '......'
		else
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
		end
	end
end
