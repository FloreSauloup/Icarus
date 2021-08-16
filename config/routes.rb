Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :show] do
    resources :rentings, only: [:create]
  end
	namespace :owner do
		resources :vehicles, only: [:new, :create]
		  resources :rentings, only: [:index] do
			  member do
				  patch :accept
				  patch :decline
		  end
   end
  end
	resources :rentings, only: [:index]
end
