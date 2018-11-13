Rails.application.routes.draw do

  resources :patients, only: [:index, :show]
  resources :doctors, only: [:index, :show]
  resources :appointments, only: [:show]

end
