Rails.application.routes.draw do
  resources :appointments
  resources :stats
  resources :users
  resources :exercises
  resources :workouts
  resources :joins

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
