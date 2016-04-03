Rails.application.routes.draw do

  resources :timeslots
  resources :recruiters
  resources :appointments

  root 'recruiters#index'
  get 'welcome/disclaimer'
  get 'welcome/home'

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :candidates, only: [:edit, :update]
  resources :candidates do
    resources :appointments, only: [:index, :edit, :update]
  end

  resources :categories, only: [:index]
  resources :categories do
    resources :candidates, only: [:new, :create]
  end
end
