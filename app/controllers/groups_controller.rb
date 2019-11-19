class GroupsController < ApplicationController
  def index
    @groups = Group.all
    owner_group
  end

  def show
  end

  def new
    @group = Group.new
  end


    def create
      @group = Group.new(groups_params)
      if @group.save
        Usergroup.create!(user_id: current_user.id, group_id: @group.id)
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
