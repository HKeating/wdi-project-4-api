Rails.application.routes.draw do

  resources :tasks
  resources :projects
  scope :api do
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
