Rails.application.routes.draw do
  get 'bookmark/create'
  get 'bookmark/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "inspirations#index"
  resources :moodboards, only: [:index, :new, :create, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :moodboards, only: [:destroy], as: :destroy_moodboard
  resources :bookmarks, only: [:destroy]

  resources :inspirations, only: [:index, :new, :create, :edit, :update]
  resources :inspirations, only: [:destroy], as: :destroy_inspiration
end
