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

  resources :users
  resources :bodies
  resources :lenses

  resources :rough_genres do
    resources :detail_genres
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
