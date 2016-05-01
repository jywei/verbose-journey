class Admin::SiteConfigImagesController < Admin::ApplicationController
  before_action :set_admin_site_config_image, only: [:update]

  def update
    respond_to do |format|
      if @admin_site_config_image.update(admin_site_config_image_params)
        format.json { render json: "success", status: :ok, location: @admin_site_config_image }
      else
        format.json { render json: @admin_site_config_image.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_site_config_image
      @admin_site_config_image = Admin::SiteConfigImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_site_config_image_params
      params.require(:admin_site_config_image).permit(:site_config_id, :image_id, :sort, :is_phone)
    end
end
