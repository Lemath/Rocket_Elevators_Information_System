Rails.application.routes.draw do
  get 'quote/index', to: 'quote#index'

  #get 'back_office/index', to: 'back_office#index'
  get 'home',  to: 'application#home'
end
