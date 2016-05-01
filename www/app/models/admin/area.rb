class Admin::Area < ActiveRecord::Base
	has_many :stores

	def select_name
		'台灣 / ' + self.city
	end

	def search_store(brand_id, product_id)
		if product_id.present?
			Admin::Store.where(:area_id => self.id).joins(:products).where("admin_products.id = ?", product_id).where("admin_products.brand_id=?",brand_id)
		else
			Admin::Store.where(:area_id => self.id).joins(:products).where("admin_products.brand_id=?",brand_id)
		end
	end
end
