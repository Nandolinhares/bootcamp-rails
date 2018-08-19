Rails.application.routes.draw do
  devise_for :users
	root to: "pages#home"

  resources :tweets	
  resources :users, only: [:index, :show]
  resources :relationships, only: [:create, :destroy]


  get "seguidores/:id" => "pages#followers", as: :followers_users
  #get "seguidores/:id" => "pages#followers_users", as: :followers_users
end
