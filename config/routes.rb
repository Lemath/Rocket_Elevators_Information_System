Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'quote', to: 'application#quote'
  get 'residential', to: 'application#residential'
  get 'commercial', to: 'application#commercial'

  #get 'back_office/index', to: 'back_office#index'
  get 'index',  to: 'application#index'
end
