Rails.application.routes.draw do
 
  devise_for :users
  resources :quotes
  resources :employees
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  # devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  get 'home/index', to: 'home#index'
  root to: 'home#index'

  
  get 'home/residential', to: 'home#residential'
  get 'home/commercial', to: 'home#commercial'



end
