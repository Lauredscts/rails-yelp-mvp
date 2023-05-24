Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/restaurants/', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # REVIEWS ACTIONS
  get '/restaurants_id/reviews/new', to: 'reviews#new'
  post '/restaurants_id/reviews', to: 'reviews#create'
end
