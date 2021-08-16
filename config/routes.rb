Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :show] do
    ressources :rentings, only: [:create]
  end
	namespace :owner do
		ressources :vehicles, only: [:new, :create]
		  ressources :rentings, only: [:index] do
			  member do
				  patch :accept
				  patch :decline
			  end
		  end
    end
  end
	ressources :rentings, only: [:index]
end
