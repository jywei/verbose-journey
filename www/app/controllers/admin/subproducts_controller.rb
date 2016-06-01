class Admin::SubproductsController < Admin::ApplicationController
  before_action :set_admin_subproduct, only: [:show, :edit, :update, :destroy]

  def index
    if params[:product_id].present?
      @admin_subproducts = Admin::Subproduct.where(:product_id => params[:product_id])
    else
      @admin_subproducts = Admin::Subproduct.all
    end
  end

  def new
    @admin_subproduct = Admin::Subproduct.new
  end

  def create
    @admin_subproduct = Admin::Subproduct.new(admin_subproduct_params)

    respond_to do |format|
      if @admin_subproduct.save
        format.html { redirect_to admin_subproduct_path(@admin_subproduct) }
        format.json { render :show, status: :created, location: @admin_subproduct }
      else
        format.html { render :new }
        format.json { render json: @admin_subproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @admin_subproduct.update(admin_subproduct_params)
        format.html { redirect_to admin_subproduct_path(@admin_subproduct) }
        format.json { render :show, status: :ok, location: @admin_subproduct }
      else
        format.html { render :edit }
        format.json { render json: @admin_subproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @admin_subproduct = Admin::Subproduct.find(params[:id])
    @media = Admin::Media.where(subproduct_id: params[:id])
  end

  private

    def set_admin_subproduct
      @admin_subproduct = Admin::Subproduct.find(params[:id])
    end

    def admin_subproduct_params
      params.require(:admin_subproduct).permit(:category, :product_id)
    end
end
