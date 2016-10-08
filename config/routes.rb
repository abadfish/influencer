Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations', :omniauth_callbacks => "users/omniauth_callbacks"}


  resource :industry

  resource :users, only: [:index, :show, :create, :edit, :update]




end
