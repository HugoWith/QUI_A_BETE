class UsergroupsController < ApplicationController
  def create
    @user = current_user
    @group = Group.find(params[:group_id])
    @usergroup = Usergroup.new(user_id: @user.id, group_id: @group.id)
    @usergroup.save
    redirect_to group_path(@group)
  end

  def destroy
    @usergroup = Usergroup.find(params[:id])
    @usergroup.destroy
  end
end
