Rails.application.routes.draw do
  resources :exercises
  resources :workouts
  resources :joins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
