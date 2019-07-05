Rails.application.routes.draw do

    resources :users, only: [:show]
    post '/signin', to: 'users#signin'
    get '/validate', to: 'users#validate'
    get '/concerns', to: 'users#concerns'
    post '/users', to: 'users#signup'
    get '/profile', to: 'users#show'
    get '/concerns', to: 'concerns#index'
  resources :remedy_concern_tables
  resources :user_concern_tables
  resources :remedies
  resources :concerns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
