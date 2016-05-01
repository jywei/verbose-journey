class Admin::Store < ActiveRecord::Base
	belongs_to :area
	has_many :product_stores , dependent: :destroy
	has_many :products ,  :through => :product_stores
end
