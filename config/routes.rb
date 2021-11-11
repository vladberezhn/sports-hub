# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'page#index'
  # get '/', to: 'page#index'

  namespace :admin do
    get '/', to: 'page#index'

    get 'block/:id', to: 'page#block_user'
    get 'activate/:id', to: 'page#activate_user'
  end

  resources :subcategories
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
