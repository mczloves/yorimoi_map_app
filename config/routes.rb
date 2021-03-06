# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  root "homes#index"
  get "maps/index"

  resources :posts do
    resource :likes, only: [:create, :destroy]
    resource :comments, only: [:create, :destroy]
  end

  resources :spots, only: [:index, :show] do
    resource :spot_users, only: [:create, :destroy]
  end

end
