Rails.application.routes.draw do
  resources :users, only: :update
  resources :paths
  resources :locations_tags
  resources :tags
  resources :locations do
    get :near, on: :collection
  end
  mount_devise_token_auth_for 'User', at: 'auth'
end
