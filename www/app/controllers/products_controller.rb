class ProductsController < ApplicationController
  # layout 'application_static'
  def index
  	@title = "Product | " + Admin::SiteConfig.first.title
    @admin_products = Admin::Product.where(:is_public => true)
  end

  def show

    if params[:url_name].present?
      @admin_product = Admin::Product.where(:url_name => params[:url_name]).first
    elsif params[:id].present?
      @admin_product = Admin::Product.find(params[:id])
    end

    @admin_subproducts = @admin_product.subproducts

    @subproducts_category = @admin_subproducts.select(:category).uniq
    @subproducts_category_en = @admin_subproducts.select(:category_en).uniq

    @admin_brand = @admin_product.brand

  	@title = @admin_product.name + " | " + Admin::SiteConfig.first.title
  	@meta_description = @admin_product.title

  	@og_image = @admin_product.main_visual.large.url if @admin_product.main_visual.present?
  end

end
