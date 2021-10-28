Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  get 'quote', to: 'application#quote'
  get 'residential', to: 'application#residential'
  get 'commercial', to: 'application#commercial'


  get 'quote/index', to: 'quote#index'
  devise_for :users #for login pages
  root to: 'home#index' #for login pages to get back home after actions
  #get 'back_office/index', to: 'back_office#index'
  get 'index',  to: 'application#index'
end
