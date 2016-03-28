Rails.application.routes.draw do
  root to: 'welcome#home'
  get 'welcome/disclaimer'

  resources :candidates, only: [:edit, :update]

  resources :industries, only: [:index]
  resources :industries do
    resources :candidates, only: [:new, :create]
  end
end
