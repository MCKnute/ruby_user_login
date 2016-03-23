Rails.application.routes.draw do

  root 'welcome#index'
  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  post 'users' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  get 'users/:id' => 'users#show', as: :user

end
