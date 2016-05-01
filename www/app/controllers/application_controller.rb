class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :default_data
  # before_action :check_old





  def default_data
      @title = Admin::SiteConfig.first.title
      @meta_description = Admin::SiteConfig.first.description
      @admin_brands = Admin::Brand.all.where(:is_public => true)
      @admin_site_config = Admin::SiteConfig.first

      @host_name = "http://www.opulunion.com"

      @main_visials_verification = Admin::SiteConfig.first.get_pc_images.limit(1)
      @phone_main_visials_verification = Admin::SiteConfig.first.get_phone_images.limit(1)

      @og_image = Admin::SiteConfig.first.get_pc_images.first.file.large.url if Admin::SiteConfig.first.get_pc_images.present?

      get_controller()
      get_action()
  end	

  def check_old
      @old_is_over_18 = false;
  	if session[:old_pass].present? || cookies[:old_pass].present?
  		# do nothing
          @old_is_over_18 = true;
  	# elsif get_controller() == 'home' && (get_action() == 'new_verification' || get_action() == 'verification')
  	# 	# do nothing
  	# else
  	# 	session[:controller] = get_controller()
  	# 	session[:action] = get_action()
   #            session[:previous_url] = request.fullpath 
   #            puts request.fullpath 
  	# 	redirect_to home_new_verification_path
      elsif get_controller() == 'devise/sessions' && (get_action() == 'new' || get_action() == 'create')
          @old_is_over_18 = true;
  	end
  end

  def get_controller
        if params[:controller].present?
                @controller_name = params[:controller]
        else
            	''
        end
  end

  def get_action
        if params[:action].present?
                @action_name = params[:action]
        else
            	''
        end
  end


end
