Rails.application.routes.draw do

    resources :users, only: [:show]
    post '/signin', to: 'users#signin'
    get '/validate', to: 'users#validate'
    get '/concerns', to: 'users#concerns'
end
