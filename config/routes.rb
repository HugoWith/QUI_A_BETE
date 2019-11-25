Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.email == "marine@marine.com" } do
    mount Sidekiq::Web => '/sidekiq'
  end

  get 'invitation/new'
  get 'invitation/post'
  get 'usergroups/join_crew'

  # Route pour la roue
  get 'groups/:group_id/bets' , to: "bets#win_wheel", as: :turn
  post 'groups/:group_id/bets/new', to: "bets#create_with_wheel", as: :create


  resources :groups do
    resources :invitations, only: [:create]
    resources :usergroups, only: [:destroy]
    resources :bets
  end
  get "/groups/:group_id/bets/:id/winner", to: "bets#who_won", as: :define_winner
  # get "/groups/:group_id/bets/:id/win_wheel",  to: "bets#wheel", as: :wheel

  get "/groups/:group_id/new-member", to: "usergroups#create", as: :new_member


  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  post 'push', to: 'bets#push'

end
