Rails.application.routes.draw do


  resources :milestones
  scope :api do
    resources :tasks
    resources :projects
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
