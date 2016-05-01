class Admin::SiteConfigImage < ActiveRecord::Base
	belongs_to :site_config
	belongs_to :image
end
