Roommate::Application.routes.draw do


  root 'properties#index'

  devise_for :users

  resources :properties
  

end
