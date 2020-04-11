# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items, only: :index do
    post :filter, on: :collection
  end
  root 'items#index'
end
