Rails.application.routes.draw do
  root to: 'welcome#home'
  get 'welcome/disclaimer'

  get '/auth/:provider/callback', to: 'sessions#create'

  resources :candidates, only: [:edit, :update]

  resources :categories, only: [:index]
  resources :categories do
    resources :candidates, only: [:new, :create]
  end
end
