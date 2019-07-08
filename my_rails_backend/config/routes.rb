Rails.application.routes.draw do

    post '/signin', to: 'users#signin'
    get '/validate', to: 'users#validate'
    get `/users/${user.id}/concerns`, to: 'users#concerns'
    post '/users', to: 'users#signup'
    get '/profile', to: 'users#show'
    patch `/users/${user.id}`, to: 'users#update'
    get '/concerns', to: 'concerns#index'
    post `/users/${user.id}/concerns`, to: 'userconcerns#create'
  resources :remedy_concerns
  resources :user_concerns
  resources :remedies
  resources :concerns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
