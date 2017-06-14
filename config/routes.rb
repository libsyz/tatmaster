Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:index, :show] do
    resources :tattoos, only: [:index]
    resources :appointments, only: [:new, :create]
    resources :reviews, only: [:index, :new, :create]
  end
end
