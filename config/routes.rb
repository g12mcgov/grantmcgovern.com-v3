Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  namespace :v1, defaults: { format: :json } do
    resources :jobs
    post 'authenticate', to: 'authentication#authenticate'
  end
end
