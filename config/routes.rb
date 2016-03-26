Rails.application.routes.draw do
  root to: 'welcome#home'
  get 'welcome/disclaimer'
  get 'welcome/industries'

  resources :candidates, only: [:new, :create, :edit, :update]
end
