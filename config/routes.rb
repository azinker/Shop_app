Rails.application.routes.draw do

  root 'user#index'
  resources :user
  resources :bicycles
  resources :car
end
