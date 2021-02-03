# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root 'items#index'

  resources :items, only: :index do
    post :filter, on: :collection
    get :kayuk, on: :collection
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :destroy]
      resources :manufacturers
      resources :categories
      resources :items
    end
  end
end
