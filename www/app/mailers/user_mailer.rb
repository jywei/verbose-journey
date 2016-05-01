class UserMailer < ActionMailer::Base
  default from: "direct.service.13@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact(to_email,from_email,name,content)
      @name = name
      @content = content
      attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/logo/w8.png")
      mail(:to => to_email, :subject => "聯絡我們", :reply_to => from_email)
  end
end
