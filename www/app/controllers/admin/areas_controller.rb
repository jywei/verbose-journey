class Admin::AreasController < Admin::ApplicationController
  before_action :set_admin_area, only: [:show, :edit, :update, :destroy]

  # GET /admin/areas
  # GET /admin/areas.json
  def index
    @admin_areas = Admin::Area.all
  end

  # GET /admin/areas/1
  # GET /admin/areas/1.json
  def show
  end

  # GET /admin/areas/new
  def new
    @admin_area = Admin::Area.new
  end

  # GET /admin/areas/1/edit
  def edit
  end

  # POST /admin/areas
  # POST /admin/areas.json
  def create
    @admin_area = Admin::Area.new(admin_area_params)

    respond_to do |format|
      if @admin_area.save
        format.html { redirect_to admin_areas_path, notice: '新增地區成功' }
        format.json { render :show, status: :created, location: @admin_area }
      else
        format.html { render :new }
        format.json { render json: @admin_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/areas/1
  # PATCH/PUT /admin/areas/1.json
  def update
    respond_to do |format|
      if @admin_area.update(admin_area_params)
        format.html { redirect_to admin_areas_path, notice: '更新地區成功' }
        format.json { render :show, status: :ok, location: @admin_area }
      else
        format.html { render :edit }
        format.json { render json: @admin_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/areas/1
  # DELETE /admin/areas/1.json
  def destroy
    @admin_area.destroy
    respond_to do |format|
      format.html { redirect_to admin_areas_url, notice: '刪除地區成功' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_area
      @admin_area = Admin::Area.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_area_params
      params.require(:admin_area).permit(:city, :google_map_x, :google_map_y)
    end
end
