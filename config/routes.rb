Rails.application.routes.draw do

  # get 'orders/index'
  # get 'orders/show'

  resources :orders

root to: 'pages#home'

resources :line_items

  get '/basket' => 'baskets#user_basket'
  post '/basket/add_item' => 'baskets#add_item'
  get '/basket/check_out' => 'baskets#check_out'
  get '/basket/edit' => 'baskets#user_basket_edit'

resources :baskets

  get '/users/edit' => 'users#edit'
resources :users

resources :products

#login/logout routes
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

get '/payment' => 'payment#pay'
post '/payment' => 'payment#process_payment'

end
