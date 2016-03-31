Rails.application.routes.draw do

  devise_for :candidates
  devise_for :recruiters
  resources :timeslots

  resources :recruiters
  resources :appointments

  root 'recruiters#index'

end
