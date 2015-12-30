Rails.application.routes.draw do
  devise_for :users

  resources :merchants, only: [:index, :show]

  resources :users, only: [:index, :show] do
    resources :favorites
  end

  resource :profile, only: [:show, :edit, :update], controller: "users"

  root "home#index"

  get 'favorites/browse', to: 'favorites#browse'
end
