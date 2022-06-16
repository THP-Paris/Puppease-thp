Rails.application.routes.draw do
  get 'dogs/index'
  get 'dogs/show'
  get 'dogs/create'
  get 'dogs/update'
  get 'dogs/destroy'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users do
    resources :avatars
  end


root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
