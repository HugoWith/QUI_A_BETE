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

  def victime
    @user = params[:user]
    @group_id = params[:group_id]
    @bet = params[:bet] # Instance variable => available in view
    mail(to: @user.email, subject: "Ils t'ont victimisé !")
  end

  def bet_end
    @bet = params[:bet]
    @group = params[:group] # Instance variable => available in view
    mail(to: @user.email, subject: "#{@bet.description} est fini ! Qui a gagné ?")
  end

  def got_present
    @user = params[:user]
    @group = params[:group]
    @bet = params[:bet] # Instance variable => available in view
    mail(to: @user.email, subject: "Alors, t'as reçu ton dû ?")
  end
end