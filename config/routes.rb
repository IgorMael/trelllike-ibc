Rails.application.routes.draw do


  resources :tasks
  patch 'steps/sort', to: 'steps#sort', as: 'sort_steps'
  get 'steps/:board_id', to: 'steps#new', as: 'new_step'
  resources :steps, only: [:create, :delete, :destroy, :update]
 
  resources :boards

  get '/', to: 'boards#index', as: 'home'
  
  root 'boards#index'
end
