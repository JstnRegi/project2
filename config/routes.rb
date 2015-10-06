Rails.application.routes.draw do

 	root to: 'welcome#index'

	post '/users', to: 'users#create'

	get '/instructors', to: 'instructors#index'

	get '/bootcamps/:id', to: 'bootcamps#show'

	get '/bootcamps/:id/review', to: 'reviews#new'

	post '/reviews', to: 'reviews#create'
	
	get  '/reviews', to: 'reviews#show'

	get "/sign_in", to: "sessions#new"

	post "/sessions", to: "sessions#create"

	delete '/sessions', to: 'sessions#destroy'

	get "/users/:id", to: "bootcamps#show"

	get '/bootcamp_reviews', to: "bootcamp_reviews#index"
end
