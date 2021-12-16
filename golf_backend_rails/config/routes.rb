Rails.application.routes.draw do
  root 'courses#index'
  resources :players
  resources :tees
  resources :rounds
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
