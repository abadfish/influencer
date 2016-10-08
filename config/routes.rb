Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations', :omniauth_callbacks => "users/omniauth_callbacks"}

<<<<<<< HEAD
=======
  resource :industry

  resource :users, only: [:index,:show, :create, :edit, :update]
  get '/users', to: 'users#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
>>>>>>> origin/front-end

  resource :industry

  resource :users, only: [:index, :show, :create, :edit, :update]




end
