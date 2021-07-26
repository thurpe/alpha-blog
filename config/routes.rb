Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/new'
  get 'categories/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  resources :users, except: [:new]
  resources :categories, except: [:destroy]

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
