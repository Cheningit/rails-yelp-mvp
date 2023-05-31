Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# 1. see a list of all restaurants
# 1. visitor can add restaurants, and be redirected to the show view of that new restaurant
# 1. visitor can see detail of a restaurant, with all the reviews related to the restaurant.
# 1. A visitor can add a new review to a restaurant

  resources :restaurants do

    collection do
      get 'index'
    end
    # member do
    #   # verb + path
    #   # /restaurants/:id/???
    #   get 'new'
    # end
  end
    # Defines the root path route ("/")
    # root "articles#index"
    # root "restaurants#index"
end
