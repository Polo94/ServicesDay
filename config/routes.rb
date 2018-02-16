Rails.application.routes.draw do
  get "movies/search/:name", to: "movies#search", as: "search"
  
  get 'movies/home'
  
  root 'movies#home'
  
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
