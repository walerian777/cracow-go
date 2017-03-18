Rails.application.routes.draw do
  resources :users, only: [:show, :update]
  resources :paths do
    post :generate_path, on: :collection
  end
  resources :locations_tags
  resources :tags
  resources :locations do
    get :near, on: :collection
  end
  mount_devise_token_auth_for 'User', at: 'auth'
end
