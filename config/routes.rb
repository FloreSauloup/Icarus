Rails.application.routes.draw do
  namespace :owner do
    get 'vehicles/new'
    get 'vehicles/create'
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :vehicles, only: [:index, :show] do
    resources :rentings, only: [:create]
  end

	namespace :owner do
		resources :vehicles, only: [:new, :create]
    resources :forms, only: [:create, :new]
		resources :rentings, only: [:index] do
			member do
				patch :accept
				patch :decline
		  end
   end
  end
	resources :rentings, only: [:index]
end
