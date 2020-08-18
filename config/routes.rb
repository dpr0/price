# frozen_string_literal: true

Rails.application.routes.draw do

  use_doorkeeper

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'items#index'

  resources :items, only: :index do
    post :filter, on: :collection
  end

  get  '/auth/:provider/callback',  to: 'sessions#create'
  get  '/v1.0',                     to: 'users#index'
  post '/v1.0/user/unlink',         to: 'users#unlink'
  get  '/v1.0/user/devices',        to: 'users#devices'
  post '/v1.0/user/devices/query',  to: 'users#query'
  post '/v1.0/user/devices/action', to: 'users#action'
end
