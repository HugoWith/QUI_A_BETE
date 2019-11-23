class BetsController < ApplicationController
  def index
  end

  def show
    @bet = Bet.find(params[:id])
  end

  def new
    @bet = Bet.new
    @group = Group.find(params[:group_id])
    @users = @group.users.where.not(id: current_user.id)
    # @users.map { |user| user.nickname }
  end

  def create
    @group = Group.find(params[:group_id])
    @bet = Bet.new(bet_params)
    @bet.group = @group
    @bet.creator = current_user

    if @bet.save!
      redirect_to group_path(@group)
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

  def who_won
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
    @bet.is_over
  end

  private

  def bet_params
    params.require(:bet).permit(:description, :end_date, :stake, :difficulty, :group_id, :creator_id, :beter_id)
  end
end
