# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :articles, :comments
  end
  get '/', to: 'page#index'

  resources :subcategories
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
