Rails.application.routes.draw do
  get 'actions/index'
  root to: "actions#index"
end
