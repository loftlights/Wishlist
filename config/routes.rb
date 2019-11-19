Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :wishes do
    resources :gifts, only: [:create, :show, :index]
  end
  resources :gifts, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
