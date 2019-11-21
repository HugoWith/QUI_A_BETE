class InvitationsController < ApplicationController

  # def new
  #   @invitation = Invitation.new
  #   @invitation.invited_users.build
  # end

  def create
    @group = Group.find(params[:group_id])
    @invitation = @group.invitations.build(invitation_params)
     @invitation.save!
      redirect_to group_path(@group)

      flash[notice: 'coucou']

  end

  private

  def invitation_params
    params.require(:invitation).permit(invited_users_attributes: [:email])
  end
end
