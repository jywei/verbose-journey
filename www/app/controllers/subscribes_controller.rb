class SubscribesController < ApplicationController
  def index
  end

  # POST /admin/subscribes
  # POST /admin/subscribes.json
  def create
    @admin_subscribe = Admin::Subscribe.new(admin_subscribe_params)

    respond_to do |format|
      if @admin_subscribe.save
        format.html { redirect_to root_path, notice: 'Subscribe was successfully created.' }
        format.json { render :show, status: :created, location: @admin_subscribe }
      else
        format.html { render root_path }
        format.json { render json: @admin_subscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_subscribe_params
      params.require(:admin_subscribe).permit(:email)
    end
end
