class UsergroupsController < ApplicationController
  def create
    @user = current_user
    @group = Group.find(params[:group_id])
    @usergroup = Usergroup.new(user_id: @user.id, group_id: @group.id)
    @usergroup.save
    redirect_to group_path(@group)
  end

  def destroy
    # p params
    @usergroup = Usergroup.find(params[:id])
    # p @usergroup
    @usergroup.destroy
    redirect_to groups_path
  end
end
