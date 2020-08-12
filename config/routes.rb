Rails.application.routes.draw do
  
  get 'restaurants' => 'restaurants#index'

  get 'restaurants/new' => 'restaurants#new'
  post 'restaurants' => 'restaurants#create'

  get 'restaurants/:id' => 'restaurants#show', as: :restaurant

end
