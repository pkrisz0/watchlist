# frozen_string_literal: true

Rails.application.routes.draw do
  root 'index#index'

  resources :movies
  resources :series

  get '/new', to: 'index#new', as: :new_thing

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
