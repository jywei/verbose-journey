class Admin::Product < ActiveRecord::Base
	mount_uploader :main_visual, ImageUploader
	belongs_to :brand

	has_many :product_images , dependent: :destroy
	has_many :images ,  :through => :product_images

	has_many :product_stores , dependent: :destroy
	has_many :stores ,  :through => :product_stores

	def select_name
		'產品 / ' + self.name.upcase
	end

  def get_long_content
    if strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 125
      strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..125] + '......'
    else
      strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
    end
  end

  def get_short_content
    if strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "").length > 25
      strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")[0..25] + '......'
    else
      strip_tags(self.content).gsub("&nbsp;", "").gsub("&quot;", "").gsub("&amp;", "")
    end
  end
end
