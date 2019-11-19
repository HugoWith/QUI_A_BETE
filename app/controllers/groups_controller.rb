class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @owner_group = current_user.groups
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def owner_group
    @owner_group = current_user.groups
  end

end
