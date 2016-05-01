class AboutsController < ApplicationController
  def index
    @title = "關於我們 | " + Admin::SiteConfig.first.title
    @admin_about = Admin::About.first
    @admin_histories = Admin::History.all.order(:sort)
    @main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
    @phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)

    @og_title = Admin::OgMainPage.first.about_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.about_title.present?
    @og_description = Admin::OgMainPage.first.about_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.about_description.present?
    @og_image = Admin::OgMainPage.first.about_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.about_image.present?
    @og_image2 = Admin::OgMainPage.first.about_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.about_image2.present?
    @og_image3 = Admin::OgMainPage.first.about_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.about_image3.present?
  end
end
