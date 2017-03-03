Rails.application.routes.draw do
  resources :items
  resources :orders
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/" => redirect("/users/sign_in")
  get '/' => "static#index"
  root "static#index"
#   devise_scope :user do
#   get '/', to: 'devise/sessions#new'
# end
end


