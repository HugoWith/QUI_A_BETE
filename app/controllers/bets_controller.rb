class BetsController < ApplicationController
  def index
  end

  def show
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])


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
      send_notifications
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def edit
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
  end

  def update
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
    @bet.update(bet_params)
    redirect_to group_bet_path(@group, @bet)
  end

  def destroy
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
    @bet.destroy
    redirect_to group_path(@group)
  end

  def end_bet
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
    @bet.is_over
    @bet.save
    redirect_to define_winner_path(@group, @bet)
  end

  def who_won
    @bet = Bet.find(params[:id])
    @group = Group.find(params[:group_id])
  end




  private

  def send_notifications
    @group.users.each do |user|
      user.send_notification_with("Un nouveau paris est en ligne")
    end
  end

  def bet_params
    params.require(:bet).permit(:description, :end_date, :stake, :difficulty, :group_id, :creator_id, :beter_id)
  end
end
