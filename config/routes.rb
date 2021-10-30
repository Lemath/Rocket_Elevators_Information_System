Rails.application.routes.draw do
  resources :quotes
<<<<<<< HEAD
=======
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
>>>>>>> b411e2bf73a1c92077b90e361f0b8e1d63cdafd9
  get 'quote/index', to: 'quote#index'

  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  root to: 'home#index'

  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'quote', to: 'application#quote'
  get 'residential', to: 'application#residential'
  get 'commercial', to: 'application#commercial'



  #get 'back_office/index', to: 'back_office#index'
  get 'index',  to: 'application#index'
end
