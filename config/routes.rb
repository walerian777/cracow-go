Rails.application.routes.draw do
  resources :users, only: [:show, :update]
  resources :paths
  resources :locations_tags
  resources :tags
  resources :locations do
    get :near, on: :collection
    post :visit, on: :member
  end
  mount_devise_token_auth_for 'User', at: 'auth'
end
