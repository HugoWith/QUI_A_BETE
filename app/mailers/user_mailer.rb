class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Tu es prêt à beter')
  end

  def invite_member
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: "#{current_user.first_name} t'invite à beter dans son crew !")
  end

end
