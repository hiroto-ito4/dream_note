Rails.application.routes.draw do
  devise_for :users
  get 'actions/index'
  root to: "actions#index"
end
