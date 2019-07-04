Rails.application.routes.draw do

    resources :users, only: [:show]
    post '/signin'git a, to: 'users#signin'
    get '/validate', to: 'users#validate'
    get '/concerns', to: 'users#concerns'
  resources :remedy_concern_tables
  resources :user_concern_tablesgit
  resources :remedies
  resources :concerns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
