Rails.application.routes.draw do
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  root to: 'pages#home'

  # READ #
  resources :restaurants
  #   #Read All
  # get 'restaurants', to: 'restaurants#index'
  #   #Read One
  # get 'restaurants/:id', to: 'restaurants#show', as: "restaurant"

  # # Create #
  #   # get info from the user
  # get 'restaurants/new', to: 'restaurants#new'
  #   # store data
  # post 'restaurants', to: 'restaurants#create'


  # # Update
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants', to: 'restaurants#update'

  # # delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
