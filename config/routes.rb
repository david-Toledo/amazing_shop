Rails.application.routes.draw do

root to: 'pages#home'

resources :line_items

  get '/basket' => 'baskets#user_basket'
  post '/basket/add_item' => 'baskets#add_item'

resources :baskets

resources :users

resources :products

#login/logout routes
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'


end
