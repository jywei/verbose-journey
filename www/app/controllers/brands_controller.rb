class BrandsController < ApplicationController
  # layout 'application_static'
  def index
    @title = "BRAND | " + Admin::SiteConfig.first.title
    @admin_brands = Admin::Brand.where(:is_public => true).order(:sort)

    @og_title = Admin::OgMainPage.first.brand_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.brand_title.present?
    @og_description = Admin::OgMainPage.first.brand_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.brand_description.present?
    @og_image = Admin::OgMainPage.first.brand_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.brand_image.present?
    @og_image2 = Admin::OgMainPage.first.brand_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.brand_image2.present?
    @og_image3 = Admin::OgMainPage.first.brand_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.brand_image3.present?
  end

  def show
    if params[:url_name].present?
    	@admin_brand = Admin::Brand.where(:url_name => params[:url_name]).first
    elsif params[:id].present?
    	@admin_brand = Admin::Brand.find(params[:id])
    end

    if @admin_brand.present?
      @title = @admin_brand.name.upcase + " | " + Admin::SiteConfig.first.title
      @meta_description = @admin_brand.description_1

      @og_title = @admin_brand.og_title
      @og_description = @admin_brand.og_description
      @og_image = @admin_brand.get_og_image
    else
      redirect_to root_path
    end
  end
end
