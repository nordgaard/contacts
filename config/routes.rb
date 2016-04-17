Rails.application.routes.draw do

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id', to: 'users#update'  #this is updating the last entry, not the one I specify
  delete '/users/:id', to: 'users#delete'
end
