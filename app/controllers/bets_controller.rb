class BetsController < ApplicationController
  def index
  end

  def show
    @bet = Bet.find(params[:id])
  end

  def new
    @bet = Bet.new
    @group = Group.find(params[:group_id])
  end

  def create
    @bet = Bet.new
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
  end
end
