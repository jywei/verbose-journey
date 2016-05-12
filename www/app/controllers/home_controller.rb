class HomeController < ApplicationController
	def index
		@admin_brands = Admin::Brand.where(:is_public => true)
		@admin_news = Admin::News.where(:is_public => true).order(:date_of_news => :desc).limit(2)
		@admin_products = Admin::Product.limit(6)
		@admin_infos = Admin::Info.limit(3)
		@admin_story = Admin::Story.first

		@main_visials = Admin::SiteConfig.first.get_pc_images
		@phone_main_visials = Admin::SiteConfig.first.get_phone_images

		@og_title = Admin::OgMainPage.first.home_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.home_title.present?
		@og_description = Admin::OgMainPage.first.home_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.home_description.present?
		@og_image = Admin::OgMainPage.first.home_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.home_image.present?
		@og_image2 = Admin::OgMainPage.first.home_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.home_image2.present?
		@og_image3 = Admin::OgMainPage.first.home_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.home_image3.present?
	end

	def new_verification
		# render :layout => false
		# @main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
		# @phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)
		# if session[:old_pass].present? || cookies[:old_pass].present?
		# 	redirect_to :controller => "home", :action => "index"
		# end
	end

	def verification
		year = params[:date][:year]
		month = params[:date][:month]
		day = params[:date][:day]

		respond_to do |format|
			if 18.year.ago > Time.parse("#{year}-#{month}-#{day}")

				session[:old_pass] = "t"

				if params[:remember].present?
					if params[:remember] == "1"
						cookies[:old_pass] =  { :value => "t", :expires => 7.days.from_now }
					end
				end


				format.json { render json: "success", status: 200 }
			else
				format.json { render json: "error", status: :unprocessable_entity }
			end
		end
	end

	def terms_of_service
		@main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
		@phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)
	end

	def privacy_policy
		@main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
		@phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)
	end

end
