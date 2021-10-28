Rails.application.routes.draw do
<<<<<<< HEAD
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'quote', to: 'application#quote'
  get 'residential', to: 'application#residential'
  get 'commercial', to: 'application#commercial'

=======
  get 'quote/index', to: 'quote#index'
<<<<<<< HEAD
  devise_for :users #for login pages
  root to: 'home#home' #for login pages to get back home after actions
=======
  devise_for :users
  root to: 'home#index'
>>>>>>> 8be5e90a1d7e4625c0ebb9b7a0008cfa81017f29
>>>>>>> 86bc82c27b7d41988113ea6d8a56f9dd764609a3
  #get 'back_office/index', to: 'back_office#index'
  get 'index',  to: 'application#index'
end
