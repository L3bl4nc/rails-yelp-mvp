Rails.application.routes.draw do
  
  # Resturants routes
  # get 'restaurants' => 'restaurants#index'

  # get 'restaurants/new' => 'restaurants#new'
  # post 'restaurants' => 'restaurants#create'

  # get 'restaurants/:id' => 'restaurants#show', as: :restaurant

  # Reviews routes
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

end
