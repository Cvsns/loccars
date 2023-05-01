
Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/login', to: 'devise/sessions#new', as: :login


  resources :cars, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :users, only: [:show, :index]
  devise_scope :user do

  delete "/logout", to: "devise/sessions#destroy", as: :logout
  end
end
