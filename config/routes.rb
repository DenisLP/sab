Rails.application.routes.draw do
  resources :vehicles
  get 'chronos/index'

  get 'chronos/management'

  get 'chronos/detailing'

  get 'chronos/painting'

  get 'chronos/rental'

  get 'chronos/waiting'

  get 'welcome/index'

  resources :rentals
  resources :inspections
  resources :insurances
  resources :contacts
  
  root 'welcome#index'
end
