# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "maps/index"
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :posts do
    resource :comments, only: [:create, :destroy]
  end

end
