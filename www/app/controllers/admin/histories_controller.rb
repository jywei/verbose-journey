class Admin::HistoriesController < Admin::ApplicationController
  before_action :set_admin_history, only: [:show, :edit, :update, :destroy]

  # GET /admin/histories
  # GET /admin/histories.json
  def index
    @admin_histories = Admin::History.all.order(:sort)
  end

  # GET /admin/histories/1
  # GET /admin/histories/1.json
  def show
  end

  # GET /admin/histories/new
  def new
    @admin_history = Admin::History.new
  end

  # GET /admin/histories/1/edit
  def edit
  end

  # POST /admin/histories
  # POST /admin/histories.json
  def create
    @admin_history = Admin::History.new(admin_history_params)

    respond_to do |format|
      if @admin_history.save
        format.html { redirect_to admin_histories_path, notice: '新增歷史成功' }
        format.json { render :show, status: :created, location: @admin_history }
      else
        format.html { render :new }
        format.json { render json: @admin_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/histories/1
  # PATCH/PUT /admin/histories/1.json
  def update
    respond_to do |format|
      if @admin_history.update(admin_history_params)
        format.html { redirect_to admin_histories_path, notice: '更新歷史成功' }
        format.json { render :show, status: :ok, location: @admin_history }
      else
        format.html { render :edit }
        format.json { render json: @admin_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/histories/1
  # DELETE /admin/histories/1.json
  def destroy
    @admin_history.destroy
    respond_to do |format|
      format.html { redirect_to admin_histories_url, notice: '刪除歷史成功' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_history
      @admin_history = Admin::History.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_history_params
      params.require(:admin_history).permit(:content, :sort)
    end
end
