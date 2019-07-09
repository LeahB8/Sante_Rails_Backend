Rails.application.routes.draw do

  resources :goals
    post '/signin', to: 'users#signin'
    get '/validate', to: 'users#validate'
    # get '/users/:id/concerns', to: 'user_concerns#index'
    get '/users/:id/concerns', to: 'users#concerns'
    post '/users', to: 'users#signup'
    get '/profile', to: 'users#show'
    patch '/users/:id', to: 'users#update'
    get '/concerns', to: 'concerns#index'
    post '/users/:id/concerns', to: 'user_concerns#create'
    delete '/users/:id/concerns/:id', to: 'user_concerns#destroy'
    get '/users/:id/concerns/:id', to: 'user_concerns#show'
  # resources :user_concerns, only: [:index, :create]
  resources :concerns, only: [:index]
  resources :users
  resources :goals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
