class Admin::OgMainPagesController < Admin::ApplicationController
  before_action :set_admin_og_main_page, only: [:show, :update, :destroy]

  # GET /admin/og_main_pages
  # GET /admin/og_main_pages.json
  def index
    @admin_og_main_pages = Admin::OgMainPage.all
  end

  # GET /admin/og_main_pages/1
  # GET /admin/og_main_pages/1.json
  def show
  end

  # GET /admin/og_main_pages/new
  def new
    @admin_og_main_page = Admin::OgMainPage.new
  end

  # GET /admin/og_main_pages/1/edit
  def edit
    if Admin::OgMainPage.where(params[:id]).present?
      @admin_og_main_page = Admin::OgMainPage.find(params[:id])
    else
      @admin_og_main_page = Admin::OgMainPage.create(:id => 1)
    end
  end

  # POST /admin/og_main_pages
  # POST /admin/og_main_pages.json
  def create
    @admin_og_main_page = Admin::OgMainPage.new(admin_og_main_page_params)

    respond_to do |format|
      if @admin_og_main_page.save
        format.html { redirect_to @admin_og_main_page, notice: 'Og main page was successfully created.' }
        format.json { render :show, status: :created, location: @admin_og_main_page }
      else
        format.html { render :new }
        format.json { render json: @admin_og_main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/og_main_pages/1
  # PATCH/PUT /admin/og_main_pages/1.json
  def update
    respond_to do |format|
      if @admin_og_main_page.update(admin_og_main_page_params)
        format.html { redirect_to edit_admin_og_main_page_path, notice: 'OG管理更新成功' }
        format.json { render :show, status: :ok, location: @admin_og_main_page }
      else
        format.html { render :edit }
        format.json { render json: @admin_og_main_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/og_main_pages/1
  # DELETE /admin/og_main_pages/1.json
  def destroy
    @admin_og_main_page.destroy
    respond_to do |format|
      format.html { redirect_to admin_og_main_pages_url, notice: 'Og main page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_og_main_page
      @admin_og_main_page = Admin::OgMainPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_og_main_page_params
      params.require(:admin_og_main_page).permit(:home_title, :home_description, :home_image, :home_image2, :home_image3, :about_title, :about_description, :about_image, :about_image2, :about_image3, :contact_title, :contact_description, :contact_image, :contact_image2, :contact_image3, :store_title, :store_description, :store_image, :store_image2, :store_image3, :news_title, :news_description, :news_image, :news_image2, :news_image3, :brand_title, :brand_description, :brand_image, :brand_image2, :brand_image3)
    end
end
