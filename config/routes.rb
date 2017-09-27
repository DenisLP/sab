Rails.application.routes.draw do
  
  root 'contacts#index'

  resources :vehicles
  resources :rentals
  resources :inspections
  resources :insurances
  resources :contacts
end
