Rails.application.routes.draw do

  root 'sessions#new'

  resources :illnesses
  resources :symptoms
  resources :appointments
  resources :patients
  resources :doctors
  get '/patient', to: 'patients#show'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  get '/destroy', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
