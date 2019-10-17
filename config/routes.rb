Rails.application.routes.draw do
  devise_for :users, :controllers => {
  	:registrations => 'users/registrations',
  	:sessions => 'users/sessions'
  }

  root 'home#top'

  resources :photos do
    resources :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resources :manufacturers, only: [:new, :create, :update, :edit]

  resources :users, only: [:show]
  resources :bodies
  resources :lenses

  resources :rough_genres, only: [:new, :create, :edit, :update, :destroy] do
    resources :detail_genres
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
