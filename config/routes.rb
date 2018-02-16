Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'search'
    end
  	resources :reviews, only: [:new], controller: 'movies/reviews'
  end
  
  resources :reviews, except: [:new], controller: 'movies/reviews'
  
  root 'movies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
