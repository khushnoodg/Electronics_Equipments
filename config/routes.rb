Rails.application.routes.draw do
  devise_for :users
  get 'purchases/new'
  get 'purchases/index'
  get 'purchases/show'
  resources :bills
  resources :categories
 get '/addbill' => 'bills#new'
 root 'homes#index'  
 get '/dashboard' => 'items#index'
 get '/add' =>'admins#new'
 resources :categories
 resources :products
 resources :customers
 resources :purchases
 get 'stock', to: 'stock#index'
 get 'purchase', to: 'purchase#index'
 get 'customer', to: 'customer#index'
resources :bills, only: [:new, :create, :show]
# config/routes.rb
resources :posts

# resources :bills do
#  resources :bill_details
#end

 resources :admins
end
