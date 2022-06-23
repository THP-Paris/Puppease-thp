Rails.application.routes.draw do
  resources :wishlists
  resources :places
  devise_for :users
  resources :wishlist_dogs, only: [:create, :update, :destroy]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users do
    resources :avatars
  end
  resources :dogs do
    resources :pictures
  end


root 'dogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
