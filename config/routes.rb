Rails.application.routes.draw do

  resources :timeslots, only: [:create, :edit, :update, :destroy]

  resources :recruiters, only: [:show]

  # resources :reviews, only: :none do
  #   resources :votes, only: [:create, :update]
  # end
end
