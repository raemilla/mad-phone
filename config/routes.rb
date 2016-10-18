Rails.application.routes.draw do

  get 'users/new'
  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#index"
  resources :sentences
  resources :stories
  resources :users
  resources :votes, only: :create
  resources :notifications
  resources :comments
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy"
end
