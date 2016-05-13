class NewsController < ApplicationController
  # layout 'application_static'
  def index
  	@title = "NEWS | " + Admin::SiteConfig.first.title
  	@admin_news = Admin::News.where(:is_public => true).order(:date_of_news => :desc)

    @og_title = Admin::OgMainPage.first.news_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.news_title.present?
    @og_description = Admin::OgMainPage.first.news_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.news_description.present?
    @og_image = Admin::OgMainPage.first.news_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.news_image.present?
    @og_image2 = Admin::OgMainPage.first.news_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.news_image2.present?
    @og_image3 = Admin::OgMainPage.first.news_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.news_image3.present?
  end

  def show
  	@admin_news = Admin::News.find(params[:id])
  	@other_news = Admin::News.where.not(:id => params[:id]).where(:is_public => true).order(:date_of_news => :desc).limit(8)
  	@title = @admin_news.title + " | " + Admin::SiteConfig.first.title
  	@meta_description = @admin_news.get_long_content

    @og_image = @admin_news.main_visual.large.url
  end
end
