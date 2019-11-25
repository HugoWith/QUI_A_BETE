class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :destroy]

  def index
    owner_groups
    @owner_user_groups = Usergroup.where(is_owner: true, user_id: current_user.id)
    @groups = @owner_user_groups.map { |ug| ug.group }
  end

  def show
    @bets = @group.bets
    @user = @group.users

    @group = Group.find(params[:id])
    @usergroup = Usergroup.where(user_id: current_user.id, group_id: @group.id).first
    # @invitation = Invitation.new
    # @invitation.group =  @group
    @invitation = @group.invitations.build
    @invitation.invited_users.build

    @usergroup_score = @group.usergroups.order(score: :desc)
    # @group_user = @group.usergroups

    # @all_creator = Bet.all
    # @creator = @all_creator.find()
  end

  def new
    @images_samples = Group::IMAGES_SAMPLES_URL
    @group = Group.new
  end

    def create
      @group = Group.new(groups_params)
      # @group.temp_photo = params["group"]["photo"]
      # @group.photo = params["photo"]
      if @group.save
        Usergroup.create!(user_id: current_user.id, group_id: @group.id, is_owner: true)
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
    @group.destroy
    redirect_to groups_path, notice: 'Crew was successfully destroyed.'
  end

  private

  def owner_groups
    @owner_groups = current_user.groups
  end

  def groups_params
    params.require(:group).permit(:name, :photo, :photo_cache)
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
