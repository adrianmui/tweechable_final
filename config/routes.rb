Rails.application.routes.draw do

  root 'pages#show', page:'home'

  resources :lessons
  resources :tweets
  resources :users

  get '/pages/:page' => 'pages#show'

  # get '/educatees/new' => 'educatees#new' - Try Tweechable page, removed per issue #41
  get '/educatees' => 'educatees#index'
  post '/educatees' => 'educatees#create'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
end
