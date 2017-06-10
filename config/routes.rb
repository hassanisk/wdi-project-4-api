Rails.application.routes.draw do
  scope :api do
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    resources :users
    resources :diets
  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
