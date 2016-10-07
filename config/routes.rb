Rails.application.routes.draw do
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#index"
  resources :sentences
  resources :stories

  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy"
end
