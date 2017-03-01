Rails.application.routes.draw do
  resources :inventories
  resources :storages
  resources :items
  resources :orders
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/" => redirect("/users/sign_in")
  resources :users
  get '/' => "static#index"
#   devise_scope :user do
#   get '/', to: 'devise/sessions#new'
# end
end


