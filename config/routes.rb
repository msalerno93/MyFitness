Rails.application.routes.draw do
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  
  get '/logout' => 'sessions#destroy'
  root 'application#home'

  resources :comments
  resources :users
  resources :exercises
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
