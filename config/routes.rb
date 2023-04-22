Rails.application.routes.draw do

  resources :users, :only => [:new, :create ]
  resources :astronomical_items

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
