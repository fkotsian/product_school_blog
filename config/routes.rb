Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # get '/posts/:id',     to: 'posts#show'
  # get '/posts/new',     to: 'posts#new'
  # post '/posts',        to: 'posts#create'
  # delete '/posts/:id',  to: 'posts#destroy'
  # ...
  
  get '/home', to: 'static#home'
  #  root 'static#show' # go to the StaticController, #show action
  
  get '/api/v1/weather', to: 'api/v1/weather#get_weather'
  
  root 'static#home'  # same as '/'
end

