Rails.application.routes.draw do
	
	devise_for :users 	
  get 'static_pages/index'
  get 'static_pages/secret'
	resources :event
  root to: 'static_pages#index'
  #root to: 'events#index' # page d'accueil

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
