Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  resources :users, only: [:index, :show]
  resources :lessons, only: [:index, :show]
  resources :assignments, only: [:index]
  resources :courses, only: [:index, :show]
end
