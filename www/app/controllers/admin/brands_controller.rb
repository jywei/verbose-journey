class Admin::BrandsController < Admin::ApplicationController
  before_action :set_admin_brand, only: [:show, :edit, :update, :destroy]

  # GET /admin/brands
  # GET /admin/brands.json
  def index
    @admin_brands = Admin::Brand.all.order(:sort)
  end

  # GET /admin/brands/1
  # GET /admin/brands/1.json
  def show
  end

  # GET /admin/brands/new
  def new
    @admin_brand = Admin::Brand.new
  end

  # GET /admin/brands/1/edit
  def edit
  end

  # POST /admin/brands
  # POST /admin/brands.json
  def create
    @admin_brand = Admin::Brand.new(admin_brand_params)

    respond_to do |format|
      if @admin_brand.save
        format.html { redirect_to admin_brands_path, notice: '新增品牌成功' }
        format.json { render :show, status: :created, location: @admin_brand }
      else
        format.html { render :new }
        format.json { render json: @admin_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/brands/1
  # PATCH/PUT /admin/brands/1.json
  def update
    respond_to do |format|
      if @admin_brand.update(admin_brand_params)
        format.html { redirect_to admin_brands_path, notice: '更新品牌成功' }
        format.json { render :show, status: :ok, location: @admin_brand }
      else
        format.html { render :edit }
        format.json { render json: @admin_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/brands/1
  # DELETE /admin/brands/1.json
  def destroy
    @admin_brand.destroy
    respond_to do |format|
      format.html { redirect_to admin_brands_url, notice: '刪除品牌成功' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_brand
      @admin_brand = Admin::Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_brand_params
      params.require(:admin_brand).permit(:name, :content, :main_visual, :main_visual2, :cn_name, :is_customization, :slogan, :slogan_by, :title_1, :description_1, :title_2, :description_2, :image_of_brand, :image_of_logo, :sort, :is_public, :url_name, :show_products_read_more, :og_title, :og_description, :og_image)
    end
end
