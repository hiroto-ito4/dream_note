Rails.application.routes.draw do
  devise_for :users
  root to: "actions#index"
  resources :actions, only: [:new, :create]
end
