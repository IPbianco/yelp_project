Rails.application.routes.draw do

devise_for :users, controllers: { sessions: 'users/sessions' }
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'users#index'

resources :reviews, only: [:index, :new, :create]
# resources :users
# root 'reviews#index'
# get '/reviews/index', to: 'reviews#index'
# get '/reviews/new', to: 'reviews#new'
# post '/reviews/new', to: 'reviews#new'


resources :restaurants, only: [:index, :new, :create]

end
