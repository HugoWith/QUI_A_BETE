class LikesController < ApplicationController

 before_action :find_bet,  :find_group
 before_action :find_like, only: [:destroy]

 def create
   if already_liked?
    flash[:notice] = "You can't like more than once"
  else
    @bet.likes.create(user_id: current_user.id)
  end
  redirect_to group_bet_path(@group, @bet)

end

def destroy
 if !(already_liked?)
  flash[:notice] = "Cannot unlike"
else
  @like.destroy
end
redirect_to group_bet_path(@group, @bet)
end


private
def find_bet
  @bet = Bet.find(params[:bet_id])
end

def find_group
  @group = Group.find(params[:group_id])
end

def already_liked?
  Like.where(user_id: current_user.id, bet_id:
    params[:bet_id]).exists?
end

def find_like
   @like = @bet.likes.find(params[:id])
end


end
