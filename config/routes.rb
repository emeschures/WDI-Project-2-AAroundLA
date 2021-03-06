Rails.application.routes.draw do
  root "users#index"
  delete '/logout' => 'sessions#destroy', as: :logout
  resources :users
  resources :meetings
  resources :sessions, only: [:new, :create]
end
