class Admin::StaffsController < Admin::ApplicationController
  before_action :set_admin_staff, only: [:show, :edit, :update, :destroy]

  # GET /admin/staffs
  # GET /admin/staffs.json
  def index
    @admin_staffs = Admin::Staff.all
  end

  # GET /admin/staffs/1
  # GET /admin/staffs/1.json
  def show
  end

  # GET /admin/staffs/new
  def new
    @admin_staff = Admin::Staff.new
  end

  # GET /admin/staffs/1/edit
  def edit
  end

  # POST /admin/staffs
  # POST /admin/staffs.json
  def create
    @admin_staff = Admin::Staff.new(admin_staff_params)

    respond_to do |format|
      if @admin_staff.save
        format.html { redirect_to @admin_staff, notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @admin_staff }
      else
        format.html { render :new }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/staffs/1
  # PATCH/PUT /admin/staffs/1.json
  def update
    respond_to do |format|
      if @admin_staff.update(admin_staff_params)
        format.html { redirect_to @admin_staff, notice: 'Staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_staff }
      else
        format.html { render :edit }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/staffs/1
  # DELETE /admin/staffs/1.json
  def destroy
    @admin_staff.destroy
    respond_to do |format|
      format.html { redirect_to admin_staffs_url, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_staff
      @admin_staff = Admin::Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_staff_params
      params.require(:admin_staff).permit(:name, :office, :slogan, :content, :about_id, :slogan2, :photo)
    end
end
