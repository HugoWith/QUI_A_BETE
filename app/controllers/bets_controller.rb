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
    @group = Group.find(params[:group_id])
    @bet = Bet.new
      if @bet.save
        respond_to do |format|
          format.html { redirect_to group_path(@group) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { render 'bets/show' }
          format.js  # <-- idem
      end
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
  end
end
