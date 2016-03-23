Rails.application.routes.draw do
  root 'sessions#new'
  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  post 'users' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user

end
