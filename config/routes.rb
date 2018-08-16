Rails.application.routes.draw do
  root to: 'palettes#index'

  resources :palettes, only: [:index, :create] do
  	collection do
  		get :refresh_grid
  	end
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
