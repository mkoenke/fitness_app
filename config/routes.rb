Rails.application.routes.draw do
  root 'welcome#index'
  get '/appointments/new_all_workouts', to: 'appointments#new_all_workouts', as: 'new_all_workouts'
  post '/appointments', to: 'appointments#create_all_workouts', as: 'create_all_workouts'
  resources :appointments
  resources :stats
  resources :users
  resources :exercises
  resources :workouts

  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
