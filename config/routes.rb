Rails.application.routes.draw do
  resources :patients
  resources :conditions
  resources :observations

  get '/patient/:id', to: 'patients#show'
  get '/condition/:id', to: 'conditions#show'
  get '/observation/:id', to: 'observations#show'

  root 'patients#index'
end
