Rails.application.routes.draw do

  devise_for :recruiters
  resources :timeslots

  resources :recruiters
  resources :appointments

  root 'appointments#new'

end
