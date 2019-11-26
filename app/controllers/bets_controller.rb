class BetsController < ApplicationController
  def index
  end

  def show
    @bet = Bet.find(params[:id])
    @group = @bet.group
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
    p params
    @bet = Bet.find(params[:id])
    @bet.is_over
    @bet.save
    redirect_to define_winner_path(@bet)
  end

  def who_won
    @bet = Bet.find(params[:id])
  end

  def save_winner
    @bet = Bet.find(params[:id])
    @group = @bet.group
    @bet.winner = User.find_by(nickname: params["bet"]["winner"])
    @bet.save
    ug = Usergroup.find(user_id: @bet.winner.id, group_id: @group.id)
    case @bet.difficulty
    when 0
      ug.score = ug.score + 110
    when 1
      ug.score = ug.score + 100
    when 2
      ug.score = ug.score + 90
    when 3
      ug.score = ug.score + 80
    when 4
      ug.score = ug.score + 70
    when 5
      ug.score = ug.score + 60
    when 6
      ug.score = ug.score + 50
    when 7
      ug.score = ug.score + 40
    when 8
      ug.score = ug.score + 30
    when 9
      ug.score = ug.score + 20
    when 10
      ug.score = ug.score + 10
    end
    ug.save
    redirect_to group_path(@group)
  end

  private

  def send_notifications
    @group.users.each do |user|
      user.send_notification_with("Un nouveau bet est en ligne")
    end
  end

  def bet_params
    params.require(:bet).permit(:description, :end_date, :stake, :difficulty, :group_id, :creator_id, :beter_id, :target_id, :winner)
  end
end
