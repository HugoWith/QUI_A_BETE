Rails.application.routes.draw do
  get 'usergroups/join_crew'
  resources :groups do
    resources :bets
  end
  get "/groups/:group_id/bets/:id/winner", to: "bets#who_won", as: :define_winner

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
