Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root "crops#index"
  resources :crops, only: [:index, :show, :new, :create] do
    resources :fields, only: [:new, :create]
  end
end
