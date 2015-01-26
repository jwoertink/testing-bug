Rails.application.routes.draw do

  root 'appointments#index'
  resources :appointments, only: [:edit, :update]
end
