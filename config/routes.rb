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

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

root 'dogs#index'
get '/home', to: 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
