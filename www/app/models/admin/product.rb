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
end
