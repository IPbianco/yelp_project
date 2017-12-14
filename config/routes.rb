Rails.application.routes.draw do

devise_for :users, controllers: { sessions: 'users/sessions' }
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'restaurants#index'

# resources :users
# root 'reviews#index'
# get '/reviews/index', to: 'reviews#index'
# get '/reviews/new', to: 'reviews#new'
# post '/reviews/new', to: 'reviews#new'

resources :restaurants, only: [:index, :new, :create, :show] do
  resources :reviews, only: [:index, :new, :create]
end

end
