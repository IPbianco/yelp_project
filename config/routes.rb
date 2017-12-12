Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



resources :reviews, only: [:index, :new, :create]
# root 'reviews#index'
# get '/reviews/index', to: 'reviews#index'
# get '/reviews/new', to: 'reviews#new'
# post '/reviews/new', to: 'reviews#new'


end
