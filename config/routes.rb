Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  resources :rooms do
    member do
      get :reserve
    end
  end
  root to: "rooms#index"
  get "home", to: 'pages#home'
  get "about", to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
