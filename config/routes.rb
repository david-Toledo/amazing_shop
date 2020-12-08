Rails.application.routes.draw do



resources :baskets
  # get 'baskets/new'
  # get 'baskets/create'
  # get 'baskets/index'
  # get 'baskets/show'
  # get 'baskets/edit'
  # get 'baskets/update'
  # get 'baskets/destroy'
resources :users
  # get 'users/new'
  # get 'users/create'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  # get 'session/new'
  # get 'session/create'
  # get 'session/destroy'


root to: 'pages#home'


resources :products


#login/logout routes
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


end
