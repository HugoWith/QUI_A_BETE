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

  def invite_member(user, owner)
    @user = user
    @owner = owner # Instance variable => available in view
    mail(to: @user.email, subject: "#{owner.first_name} t'invite à beter dans son crew !")
  end

  def victime(user, group, bet)
    @user = user
    @group_id = group.id
    @bet = bet # Instance variable => available in view
    mail(to: @user.email, subject: "Ils t'ont victimisé !")
  end

  def bet_end(bet, group)
    @bet = bet
    @group = group # Instance variable => available in view
    mail(to: @user.email, subject: "#{@bet.description} est fini ! Qui a gagné ?")
  end

  def got_present(user, group, bet)
    @user = user
    @group = group
    @bet = bet # Instance variable => available in view
    mail(to: @user.email, subject: "Alors, t'as reçu ton dû ?")
  end
end
