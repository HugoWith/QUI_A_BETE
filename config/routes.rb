Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.email == "marine@marine.com" } do
    mount Sidekiq::Web => '/sidekiq'
  end

  get 'invitation/new'
  get 'invitation/post'
  get 'usergroups/join_crew'



  resources :groups do
    resources :invitations, only: [:create]
    resources :usergroups, only: [:destroy]
    resources :bets
  end
  get "/bets/:id/winner", to: "bets#who_won", as: :define_winner
  post "/bets/:id/winner", to: "bets#save_winner", as: :save_winner
  get "/bets/:id/end-bet", to: "bets#end_bet", as: :end_bet

  get "/groups/:group_id/new-member", to: "usergroups#create", as: :new_member


  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # post '/push', to: 'bets#push'
  # post '/push', to: 'devise/sessions#push'
  post '/push', to: 'user_notifications#push', as: 'user_push'
  get '/push', to: 'user_notifications#notification_for_users', as: 'user_notif_push'

  resources :groups do
    resources :bets do
      resources :likes
    end
  end

end
