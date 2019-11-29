class UsergroupsController < ApplicationController

  before_action :set_group, only: [:create]
  before_action :check_invitation, only: [:create]

  def create
    @usergroup = Usergroup.create!(user: current_user, group: @group)
    redirect_to group_path(@group)
  end

  def destroy
    # p params
    @usergroup = Usergroup.find(params[:id])
    # p @usergroup
    @usergroup.destroy
    redirect_to groups_path
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def check_invitation
    head :forbidden unless InvitedUser.find(params[:invited_user_id]).email == current_user.email && @group.usergroups.find_by(user_id: current_user.id).nil?
  end
end
