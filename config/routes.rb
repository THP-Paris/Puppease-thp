Rails.application.routes.draw do

  get 'pictures/create'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users do
    resources :avatars
  end
  resources :dogs do
    resources :pictures
  end


root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
