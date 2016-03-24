Rails.application.routes.draw do
  root to: 'welcome#home'
  get 'welcome/disclaimer'

  resources :candidates, only: [:new, :create]
end
