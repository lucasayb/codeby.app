Rails.application.routes.draw do
  resources :customer_profiles
  root 'home#index'
  resources :professional_contracts
  resources :professional_profiles
  resources :orders
  resources :proposals
  resources :tasks
  resources :task_categories
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
