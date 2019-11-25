class UsergroupsController < ApplicationController
  def create
    @user = current_user
    @group = Group.find(params[:group_id])
    @usergroup = Usergroup.new
  end
end
