Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: [:show]

  resources :vans do
    resources :bookings, only: [:new, :create, :show, :index] do
      member do
        patch :accepter
        patch :refuser
      end
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
