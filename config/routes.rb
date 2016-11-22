Rails.application.routes.draw do

  resources :users
  get 'users/:id/status', to: 'users#edit_status', as: 'edit_user_status'
  get 'users/:id/assign_goals', to: 'users#assign_goals', as: 'assign_goals'
  get 'users/:id/update_users_goals', to: 'users#update_users_goals', as: 'update_users_goals'
  get 'users/:id/upgrade_goal_status', to: 'users#upgrade_goal_status', as: 'upgrade_goal_status'
  get 'user/:id/unlink_user_goal', to: 'users#unlink_user_goal', as: 'unlink_user_goal'

  resources :goals

  resources :presents

  resources :places

  resources :pages

  root 'pages#login'

end
