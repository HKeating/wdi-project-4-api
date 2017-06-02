Rails.application.routes.draw do
  scope :api do
    resources :tasks
    resources :projects
    resources :users
    resources :milestones
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
