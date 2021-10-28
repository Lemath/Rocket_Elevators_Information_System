Rails.application.routes.draw do
  get 'quote/index', to: 'quote#index'
  devise_for :users #for login pages
  root to: 'home#home' #for login pages to get back home after actions
  #get 'back_office/index', to: 'back_office#index'
  get 'home',  to: 'application#home'
end
