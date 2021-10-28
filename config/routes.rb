Rails.application.routes.draw do
  get 'quote/index', to: 'quote#index'
<<<<<<< HEAD
  devise_for :users #for login pages
  root to: 'home#home' #for login pages to get back home after actions
=======
  devise_for :users
  root to: 'home#index'
>>>>>>> 8be5e90a1d7e4625c0ebb9b7a0008cfa81017f29
  #get 'back_office/index', to: 'back_office#index'
  get 'home',  to: 'application#home'
end
