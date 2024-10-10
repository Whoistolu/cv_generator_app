Rails.application.routes.draw do
  devise_for :users

  # Routes admin routes
  namespace :admin do
    resources :templates, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  end

  # Routes for users
  resources :resumes, only: [:new, :create, :edit, :update, :show, :index]
  resources :templates, only: [:index, :show]
end
