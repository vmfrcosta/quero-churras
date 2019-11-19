Rails.application.routes.draw do
  devise_for :users
  root to: 'grills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :grills do
    resources :bookings
  end
end
