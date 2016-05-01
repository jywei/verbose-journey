class Admin::SiteConfigsController < Admin::ApplicationController
  before_action :set_admin_site_config, only: [:show, :edit, :update, :destroy]

  # GET /admin/site_configs
  # GET /admin/site_configs.json
  def index
    @admin_site_configs = Admin::SiteConfig.all
  end

  # GET /admin/site_configs/1
  # GET /admin/site_configs/1.json
  def show
  end

  # GET /admin/site_configs/new
  def new
    @admin_site_config = Admin::SiteConfig.new
  end

  # GET /admin/site_configs/1/edit
  def edit
  end

  # POST /admin/site_configs
  # POST /admin/site_configs.json
  def create
    # @admin_site_config = Admin::SiteConfig.new(admin_site_config_params)

    # respond_to do |format|
    #   if @admin_site_config.save
    #     format.html { redirect_to @admin_site_config, notice: 'Site config was successfully created.' }
    #     format.json { render :show, status: :created, location: @admin_site_config }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @admin_site_config.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /admin/site_configs/1
  # PATCH/PUT /admin/site_configs/1.json
  def update
    respond_to do |format|
      if @admin_site_config.update(admin_site_config_params)
        format.html { redirect_to edit_admin_site_config_path, notice: '網站管理更新成功' }
        format.json { render :show, status: :ok, location: @admin_site_config }
      else
        format.html { render :edit }
        format.json { render json: @admin_site_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/site_configs/1
  # DELETE /admin/site_configs/1.json
  def destroy
    @admin_site_config.destroy
    respond_to do |format|
      format.html { redirect_to admin_site_configs_url, notice: 'Site config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_site_config
      @admin_site_config = Admin::SiteConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_site_config_params
      params.require(:admin_site_config).permit(:title, :description, :name, :tax_id, :phone, :fax, :address, :email, :website_url, :facebook_url, :main_visual_logo_is_show, :brands_list_logo_is_show, :slide_speed, :privacy_policy, :terms_of_service)
    end
end
