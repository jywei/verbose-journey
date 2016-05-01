class Admin::ApplicationController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  layout 'admin'
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_filter :default_data


  def default_data
  	@title = Admin::SiteConfig.first.title
  end	


end
