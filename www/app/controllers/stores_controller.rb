class StoresController < ApplicationController
  respond_to :json, :html

  def index
  	@title = "WHERE? | " + Admin::SiteConfig.first.title
    @main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
    @phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)

  	if params[:product_id].present?
  		product = Admin::Product.find(params[:product_id])
  		@product_id = product.id
  		@brand_id = product.brand.id
  	end

    @og_title = Admin::OgMainPage.first.store_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.store_title.present?
    @og_description = Admin::OgMainPage.first.store_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.store_description.present?
    @og_image = Admin::OgMainPage.first.store_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.store_image.present?
    @og_image2 = Admin::OgMainPage.first.store_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.store_image2.present?
    @og_image3 = Admin::OgMainPage.first.store_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.store_image3.present?
  end

  def search
    if params[:area].present?
      area = Admin::Area.find(params[:area])
      if params[:brand].present?
        stores = area.search_store(params[:brand], params[:product][:id])
      end

      # if stores.present?
      #   render json: stores.to_json( :include => { :area => { :only => [:google_map_x, :google_map_y] } } )
      # end

      respond_to do |format|
        if stores.present?
          format.json { render json: stores.to_json( :include=>{:area => { :only => [:google_map_x, :google_map_y]}}), status: 200}
          #format.html { redirect_to 'index' }
        else
          format.json { render json: stores.errors, status: :unprocessable_entity }
        end
      end

      #redirect_to :index

    end
  end

end
