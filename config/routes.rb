Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'welcome#index'

  resources :articles
end
