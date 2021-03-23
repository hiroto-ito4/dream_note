Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  root to: "works#index"
  resources :works do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
