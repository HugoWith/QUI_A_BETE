class InvitationsController < ApplicationController
  # def new
  #   @invitation = Invitation.new
  #   @invitation.invited_users.build
  # end

  def create
    @group = Group.find(params[:group_id])
    @invitation = @group.invitations.build(invitation_params)
    if @invitation.save
      @invitation.last.invited_users.each do |user|
        mail = UserMailer.with(user: user.email).invite_member
        mail.deliver_now
      end
      redirect_to group_path(@group)
    else
      flash[notice: "Ouch, on n'a pas pu ajouter de membre à ton crew :/"]
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(invited_users_attributes: [:email])
  end
end
