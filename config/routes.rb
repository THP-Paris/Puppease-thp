Rails.application.routes.draw do
  resources :users do
    resources :avatars
  end

  devise_for :users
root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
