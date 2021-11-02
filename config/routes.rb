Rails.application.routes.draw do
 

  resources :quotes
  resources :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  # devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  get 'home/index', to: 'home#index'
  root to: 'home#index'

  get '/residential', to: 'home#residential'
  get '/commercial', to: 'home#commercial'



end
