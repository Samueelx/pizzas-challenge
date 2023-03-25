Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get '/restaurants', to: "resturants#index"
  get '/pizzas', to: "pizzas#index"
  post '/restaurant_pizzas', to: "restaurant_pizzas#create"
end
