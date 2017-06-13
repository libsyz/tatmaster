Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:index, :show] do
    resources :tattoos, only: [:index]
    resources :appointments, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
   end
  end
