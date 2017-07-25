Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :categories
  resources :articles do
    resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  root 'welcome#index'

  get '/dashboard', to: 'welcome#dashboard'

  put '/articles/:id/publish', to: 'articles#publish'

end
