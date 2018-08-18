Rails.application.routes.draw do
  devise_for :users
	root to: "pages#home"

  resources :tweets	
  resources :users, only: [:index, :show]
end
