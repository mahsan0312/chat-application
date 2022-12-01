#routes.rb
Rails.application.routes.draw do
  get 'rooms/index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :users
  resources :rooms do
    resources :messages
  end
  root 'rooms#index'
end
