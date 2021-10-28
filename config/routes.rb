Rails.application.routes.draw do
  get 'quote/index', to: 'quote#index'
  devise_for :users
  root to: 'home#index'
  #get 'back_office/index', to: 'back_office#index'
  get 'home',  to: 'application#home'
end
