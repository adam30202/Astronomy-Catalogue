Rails.application.routes.draw do

  root :to => "pages#about"

  resources :astronomical_items, path: :astronomycatalogue do 
    resources :comments, :only => [:create ]
  end

  resources :users, :only => [:new, :create ]
  

  get '/bookmarks' => 'bookmarks#show'
  post '/bookmarks' => 'bookmarks#new'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
