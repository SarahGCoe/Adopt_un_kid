Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :kids do
    resources :bookings, only: [:create, :new, :show]
  end
 resources :bookings, only: :index
end
