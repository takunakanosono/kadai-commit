Rails.application.routes.draw do
  
   # CRUD
  get 'tasks/:id', to: 'tasks#show'
  post 'tasks', to: 'tasks#create'
  put 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'

  # index: show の補助ページ
  get 'tasks', to: 'tasks#index'

  # new: 新規作成用のフォームページ
  get 'tasks/new', to: 'tasks#new'

  # edit: 更新用のフォームページ
  get 'tasks/:id/edit', to: 'tasks#edit'
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
