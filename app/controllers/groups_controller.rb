class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @owner_group = current_user.groups
  end

  def show
  end

  def new
    @group = Group.new
  end


    def create
      @group = Group.new(groups_params)
      @user_group = Usergroup.new(user_groups_params)
      if @group.save! && @user_group.save!
        redirect_to groups_path()
      else
        render :new
      end
    end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def owner_group
    @owner_group = current_user.groups
  end

  def groups_params
    params.require(:group).permit(:name, :photo, :photo_cache)
  end

  def user_groups_params
    params.require(:usergroup).permit(:user_id, :group_id, :score)
  end

end
