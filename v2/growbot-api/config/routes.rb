Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resources :settings
			resources :sensor_readings

			post 'authenticate', to: 'authentication#authenticate'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
