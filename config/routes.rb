Rails.application.routes.draw do
  resources :locations_tags
  resources :tags
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :locations
end
