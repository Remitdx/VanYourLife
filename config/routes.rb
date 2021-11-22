Rails.application.routes.draw do
  root to: 'pages#home'
  get "profile", to: "pages#profile"
end
