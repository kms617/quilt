Rails.application.routes.draw do

  devise_for :candidates
  devise_for :recruiters
  resources :timeslots

  resources :recruiters
  resources :appointments

  root 'recruiters#index'
  get 'welcome/disclaimer'
  get 'welcome/home'

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :candidates, only: [:edit, :update]

  resources :categories, only: [:index]
  resources :categories do
    resources :candidates, only: [:new, :create]
  end
end
