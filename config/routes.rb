Rails.application.routes.draw do
  resources :learnings
  get 'charts/Graphics'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :company_informations
  resources :personal_informations
  resources :employment_informations
  get 'charts/Graphics'
  get 'welcome/index'
  root :to => 'welcome#index'
  post ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
