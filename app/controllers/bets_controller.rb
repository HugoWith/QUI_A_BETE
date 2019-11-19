class BetsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @bet = Bet.new
    @group = Group.find(params[:group_id])
  end

  def create
    @bet = Bet.new
    @bet.creator = current_user
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
