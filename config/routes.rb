Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "inspirations#index"
  resources :moodboards, only: [:index, :new, :create, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :bookmarks, only: [:destroy], as: :destroy_bookmark
  end
  resources :moodboards, only: [:destroy], as: :destroy_moodboard

  resources :inspirations, only: [:index, :new, :create, :edit, :update]
  resources :inspirations, only: [:destroy], as: :destroy_inspiration
end
