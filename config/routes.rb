# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
end
