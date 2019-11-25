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

  def push
    Webpush.payload_send(
      message: params[:message],
      endpoint: params[:subscription][:endpoint],
      p256dh: params[:subscription][:keys][:p256dh],
      auth: params[:subscription][:keys][:auth],
      vapid: {
        subject: "mailto:sender@example.com",
        public_key: ENV['VAPID_PUBLIC_KEY'],
        private_key: ENV['VAPID_PRIVATE_KEY']
      },
    ssl_timeout: 5, # value for Net::HTTP#ssl_timeout=, optional
    open_timeout: 5, # value for Net::HTTP#open_timeout=, optional
    read_timeout: 5 # value for Net::HTTP#read_timeout=, optional
    )

    Webpush.payload_send(
  endpoint: "https://fcm.googleapis.com/gcm/send/eah7hak....",
  message: "A message",
  p256dh: "BO/aG9nYXNkZmFkc2ZmZHNmYWRzZmFl...",
  auth: "aW1hcmthcmFpa3V6ZQ==",
  api_key: "AIzaSyCHyemgMJqIOPnDfJ_duR4RAVyANGqDrog"
)
  end

  private

  def bet_params
    params.require(:bet).permit(:description, :end_date, :stake, :difficulty, :group_id, :creator_id, :beter_id)
  end
end
