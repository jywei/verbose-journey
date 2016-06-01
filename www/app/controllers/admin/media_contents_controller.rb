class Admin::MediaContentsController < Admin::ApplicationController

  def index
    @media_contents = Admin::Media.all
  end

  def create
    @media = Admin::Media.new(file_name: params[:file], subproduct_id: params[:sub_id])
    if @media.save!
      render json: @media
    else
      puts 'Hello'
      render json: { error: 'Failed to process' }, status: 422
    end
  end

  def delete_media
    Admin::Media.where(id: params[:media_contents]).destroy_all
    redirect_to admin_subproducts_path
  end

  def delete_all
    Admin::Media.delete_all
    redirect_to admin_subproducts_path
  end

  def media_params
    params.require(:media_contents).permit(:file_name, :subproduct_id)
  end

end
