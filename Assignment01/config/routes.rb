Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  resources :logins
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'users#index'
end
