Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :show, :create]
  resource :dashboard, only: [:show]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  root to: 'homes#show', via: :get
end
