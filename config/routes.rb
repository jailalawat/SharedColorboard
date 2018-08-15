Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :dashboard, only: [] do
  	collection do
  		post :apply_color
  		get :refresh_grid
  	end
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
