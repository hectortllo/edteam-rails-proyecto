Rails.application.routes.draw do
  resources :rooms
  root to: "pages#home"
  get 'pages/home'
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
