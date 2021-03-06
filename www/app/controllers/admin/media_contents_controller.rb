class Admin::MediaContentsController < Admin::ApplicationController

  def index
    @media_contents = Admin::Medium.all
  end

  def create
    @media = Admin::Medium.new(file_name: params[:file], subproduct_id: params[:sub_id])
    if @media.save!
      render json: @media
    else
      puts 'Hello'
      render json: { error: 'Failed to process' }, status: 422
    end
  end

  def delete_media
    @subproduct = Admin::Subproduct.find(params[:sub_id])
    Admin::Medium.where(id: params[:media_contents]).destroy_all
    redirect_to admin_subproduct_path(@subproduct.id)
  end

  def delete_all
    @subproduct = Admin::Subproduct.find(params[:sub_id])
    Admin::Medium.where(subproduct_id: params[:sub_id]).delete_all
    redirect_to admin_subproduct_path(@subproduct.id)
  end

  def media_params
    params.require(:media_contents).permit(:file_name, :subproduct_id)
  end

end
