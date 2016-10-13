Rails.application.routes.draw do
     	get 'signup', to: 'users#new', as: 'signup'
     	get 'login', to: 'sessions#new', as: 'login'
     	get 'logout', to: 'sessions#destroy', as: 'logout'

   	resources :users
   	resources :sessions

  	get 'sessions/new'
  	resources :users

	get ':controller/:action'
	get ':controller/:action/:id'
	post ':controller/:action'
	post ':controller/:action/:id'

  root 'welcome#home'
end
