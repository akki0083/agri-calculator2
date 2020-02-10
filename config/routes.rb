Rails.application.routes.draw do
  devise_for :users
  root "crops#index"
  resources :crops, only: [:index, :show, :new, :create] do
    resources :fields, only: [:new, :create]
  end
end
