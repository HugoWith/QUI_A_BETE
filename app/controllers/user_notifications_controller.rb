<<<<<<< HEAD
class UserNotificationsController < ApplicationController
  skip_before_action :verify_authenticity_token



=======
 class UserNotificationsController < ApplicationController
   skip_before_action :verify_authenticity_token
>>>>>>> 10b1d4cb3e5dd0cecb88d12f2929eeb5cd353ee2
  def push
    current_user.update(subscription: params["subscription"])
  end

  def notification_for_users
    @group = Group.find(params[:group_id])

    @group.users.where.not(subscription: nil).each do |user|

<<<<<<< HEAD

      Webpush.payload_send(
        message: "DTG",
        endpoint: user.subscription["endpoint"],
        p256dh: user.subscription["keys"]["p256dh"],
        auth: user.subscription["keys"]["auth"],
        vapid: {
          subject: "mailto:sender@example.com",
          public_key: ENV['VAPID_PUBLIC_KEY'],
          private_key: ENV['VAPID_PRIVATE_KEY']
        },
        ssl_timeout: 5, # value for Net::HTTP#ssl_timeout=, optional
        open_timeout: 5, # value for Net::HTTP#open_timeout=, optional
        read_timeout: 5 # value for Net::HTTP#read_timeout=, optional
      )
    end
  end
end
=======
       Webpush.payload_send(
         message: "DTG",
         endpoint: user.subscription["endpoint"],
         p256dh: user.subscription["keys"]["p256dh"],
         auth: user.subscription["keys"]["auth"],
         vapid: {
           subject: "mailto:sender@example.com",
           public_key: ENV['VAPID_PUBLIC_KEY'],
           private_key: ENV['VAPID_PRIVATE_KEY']
         },
         ssl_timeout: 5, # value for Net::HTTP#ssl_timeout=, optional
         open_timeout: 5, # value for Net::HTTP#open_timeout=, optional
         read_timeout: 5 # value for Net::HTTP#read_timeout=, optional
      )
     end
   end
 end
>>>>>>> 10b1d4cb3e5dd0cecb88d12f2929eeb5cd353ee2
