Rails.application.routes.draw do
  root to: 'welcome#home'
  get 'welcome/disclaimer'

  devise_for :candidates
  devise_for :recruiters

  resources :timeslots
  resources :recruiters
  resources :appointments

  resources :candidates, only: [:edit, :update]
  resources :candidates do
    resources :appointments, only: [:index, :edit, :update]
  end

  resources :categories, only: [:index]
  resources :categories do
    resources :candidates, only: [:new, :create]
  end
end
