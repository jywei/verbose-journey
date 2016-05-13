class ContactsController < ApplicationController
  def index
    @title = "聯絡我們 | " + Admin::SiteConfig.first.title
    @admin_site_config = Admin::SiteConfig.first
    @main_visials = Admin::SiteConfig.first.get_pc_images.limit(1)
    @phone_main_visials = Admin::SiteConfig.first.get_phone_images.limit(1)

    @og_title = Admin::OgMainPage.first.contact_title if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.contact_title.present?
    @og_description = Admin::OgMainPage.first.contact_description if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.contact_description.present?
    @og_image = Admin::OgMainPage.first.contact_image.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.contact_image.present?
    @og_image2 = Admin::OgMainPage.first.contact_image2.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.contact_image2.present?
    @og_image3 = Admin::OgMainPage.first.contact_image3.large.url if Admin::OgMainPage.first.present? && Admin::OgMainPage.first.contact_image3.present?
  end

  def create
    @admin_contact = Admin::Contact.new(admin_contact_params)

    respond_to do |format|
      if @admin_contact.save
        to_email = Admin::SiteConfig.first.get_email
        form_email = @admin_contact.email
        name = @admin_contact.name
        message = @admin_contact.message
        # UserMailer.contact(to_email,form_email,name,message).deliver
        format.html { redirect_to contacts_path, notice: '發送成功' }
        format.json { render :show, status: :created, location: @admin_contact }
      else
        format.html { render root_path }
        format.json { render json: @admin_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_contact_params
      params.require(:admin_contact).permit(:name, :phone, :email, :message)
    end
end
