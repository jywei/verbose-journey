include ActionView::Helpers::SanitizeHelper
class Admin::News < ActiveRecord::Base
	mount_uploader :main_visual, ImageUploader
	mount_uploader :main_visual2, ImageUploader

	def get_long_content
		if strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 125
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..125] + '......'
		else
			strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
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
