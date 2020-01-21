Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :movies
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
