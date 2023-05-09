Rails.application.routes.draw do

  # Defines the root path route ("/")
  root "sharing_youtube_videos#index"

  get 'sign_in', to: 'sessions#show', as: :sign_in
  get 'sign_up', to: 'users#new', as: :sign_up

  resource :session, only: %i[create]
  resources :sharing_youtube_videos, only: %i[index create]
  resources :users, only: :create
end
