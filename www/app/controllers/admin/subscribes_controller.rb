class Admin::SubscribesController < Admin::ApplicationController
  before_action :set_admin_subscribe, only: [:show, :edit, :update, :destroy]

  # GET /admin/subscribes
  # GET /admin/subscribes.json
  def index
    @admin_subscribes = Admin::Subscribe.all
  end

  # GET /admin/subscribes/1
  # GET /admin/subscribes/1.json
  def show
  end

  # GET /admin/subscribes/new
  def new
    @admin_subscribe = Admin::Subscribe.new
  end

  # GET /admin/subscribes/1/edit
  def edit
  end

  # POST /admin/subscribes
  # POST /admin/subscribes.json
  def create
    @admin_subscribe = Admin::Subscribe.new(admin_subscribe_params)

    respond_to do |format|
      if @admin_subscribe.save
        format.html { redirect_to @admin_subscribe, notice: 'Subscribe was successfully created.' }
        format.json { render :show, status: :created, location: @admin_subscribe }
      else
        format.html { render :new }
        format.json { render json: @admin_subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/subscribes/1
  # PATCH/PUT /admin/subscribes/1.json
  def update
    respond_to do |format|
      if @admin_subscribe.update(admin_subscribe_params)
        format.html { redirect_to @admin_subscribe, notice: 'Subscribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_subscribe }
      else
        format.html { render :edit }
        format.json { render json: @admin_subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/subscribes/1
  # DELETE /admin/subscribes/1.json
  def destroy
    @admin_subscribe.destroy
    respond_to do |format|
      format.html { redirect_to admin_subscribes_url, notice: 'Subscribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_subscribe
      @admin_subscribe = Admin::Subscribe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_subscribe_params
      params.require(:admin_subscribe).permit(:email)
    end
end
