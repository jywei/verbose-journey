class Admin::MediaContentsController < Admin::ApplicationController

  def index
    @media_contents = Admin::Media.all
  end

  def create
    @media = Admin::Media.new(file_name: params[:file])
    if @media.save!
      render json: @media
    else
      puts 'Hello'
      render json: { error: 'Failed to process' }, status: 422
    end
  end

  def delete_media
    Admin::Media.where(id: params[:media_contents]).destroy_all
    redirect_to admin_media_contents_path
  end

  def delete_all
    Admin::Media.delete_all
    redirect_to admin_media_contents_path
  end

end
