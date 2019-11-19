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
      @group.usergroups = current_user
      p @group.usergroups
      if @group.save!
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

end
