class Admin::SiteConfig < ActiveRecord::Base
	has_many :site_config_images , dependent: :destroy
	has_many :images ,  :through => :site_config_images

	def get_phone_images
		self.images.where(:admin_site_config_images => {:is_phone => true}).order('admin_site_config_images.sort')
	end

	def get_pc_images
		self.images.where(:admin_site_config_images => {:is_phone => false}).order('admin_site_config_images.sort')
	end

	def get_email
		if self.email.present?
			self.email
		else
			"direct.service.13@gmail.com"
		end
	end
end
