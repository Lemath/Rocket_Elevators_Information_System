Rails.application.routes.draw do
  get 'quote/index', to: 'quote#index'
  devise_for :users
  root to: 'index#index'
  #get 'back_office/index', to: 'back_office#index'
  get 'index',  to: 'application#index'
end
