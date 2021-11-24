Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :vans do
    resources :bookings, only: [:create, :new] do
      # member do
      #   patch :accepted
      #   patch :declined
      # end
    end
    
  end
  resources :bookings, only: [] do
    member do 
      patch "accepted"
      patch "declined"
    end
  end
  # patch "bookings/:id/accepted", to: "bookings#accept"
  # patch "bookings/:id/declined", to: "bookings#declined"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  get "profile", to: "pages#profile"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
