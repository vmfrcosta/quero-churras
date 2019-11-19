Rails.application.routes.draw do
  devise_for :users
  root to: 'grills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grills do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :destroy, :edit, :update]
  get 'my_grills', to: 'grills#my_grills', as: 'my_grills'
  root to: "grills#index"
end
