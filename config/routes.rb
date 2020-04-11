# frozen_string_literal: true

Rails.application.routes.draw do
  root 'stats#index'

  resources :stats, only: :index
end
