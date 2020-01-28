Rails.application.routes.draw do

  patch 'tasks/sort/:step_id', to: 'tasks#sort', as: 'sort_tasks'
  get 'tasks/:step_id', to: 'tasks#new', as: 'new_task'
  resources :tasks, only: [:create, :delete, :destroy, :update, :edit]

  patch 'steps/sort', to: 'steps#sort', as: 'sort_steps'
  get 'steps/:board_id', to: 'steps#new', as: 'new_step'
  resources :steps, only: [:create, :delete, :destroy, :update, :edit]
 
  resources :boards
  get '/', to: 'boards#index', as: 'home'
  
  root 'boards#index'
end
