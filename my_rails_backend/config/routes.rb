Rails.application.routes.draw do
  resources :remedy_concern_tables
  resources :user_concern_tables
  resources :remedies
  resources :concerns
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
