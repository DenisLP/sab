Rails.application.routes.draw do
  
  get 'crash/question'

  get 'crash/answer'

  get 'agent/login'
  get 'agent/select_customer'

  get 'print_documents/index'
  get 'print_documents/print'
  post 'print_documents/index'
  post 'print_documents/print'

  get 'wiz/step1' => redirect( '/')
  post 'wiz/step1'
  get 'wiz/step11'
  get 'wiz/step2'
  get 'wiz/step21'
  get 'wiz/step3'
  get 'wiz/step4'
  get 'wiz/step5'
  get 'wiz/step6'
  get 'wiz/step7'
  get 'wiz/step8'
  get 'wiz/other_services'
  

  # post 'wiz/step2'
  # post 'wiz/step3'
  post 'wiz/step4'
  post 'wiz/step5'
  post 'wiz/step6'
  post 'wiz/step7'
  post 'wiz/step8'

  get 'chronos/index'

  get 'chronos/management'

  get 'chronos/detailing'

  get 'chronos/painting'

  get 'chronos/rental'

  get 'chronos/waiting'

  get 'welcome/index'

  resources :vehicles
  resources :rentals
  resources :inspections
  resources :insurances
  resources :contacts
  resources :photos, only: [:new, :create, :index, :destroy]
  
  root 'welcome#index'
end
