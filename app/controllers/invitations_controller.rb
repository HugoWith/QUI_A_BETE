class InvitationsController < ApplicationController
  # def new
  #   @invitation = Invitation.new
  #   @invitation.invited_users.build
  # end

  def create
    @group = Group.find(params[:group_id])
    @group_id = @group.id
    @owner = current_user
    @invitation = @group.invitations.build(invitation_params)
    if @invitation.save
      @invitation.invited_users.each do |invited_user|
        mail = UsersMailer.invite_member(invited_user, @owner, @group_id)
        mail.deliver_later
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
