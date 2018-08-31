Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			devise_for :users
			resources :settings
			resources :sensor_readings
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
