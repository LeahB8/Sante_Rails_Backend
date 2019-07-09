Rails.application.routes.draw do

    post '/signin', to: 'users#signin'
    get '/validate', to: 'users#validate'
    get '/users/:id/concerns', to: 'user_concerns#index'
    post '/users', to: 'users#signup'
    get '/profile', to: 'users#show'
    patch '/users/:id', to: 'users#update'
    get '/concerns', to: 'concerns#index'
    post '/users/:id/concerns', to: 'user_concerns#create'
  # resources :user_concerns, only: [:index, :create]
  resources :concerns, only: [:index]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
