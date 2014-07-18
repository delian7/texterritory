Rails.application.routes.draw do
  get 'visuals/index'
  get 'modules/index'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  match ':controller(/:action(/:id))', :via => :get
end
