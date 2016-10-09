Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations', :omniauth_callbacks => "users/omniauth_callbacks"}

  resource :industry

  resource :users, only: [:index,:show, :create, :edit, :update]
  get '/users', to: 'users#index'


  ## Messenger ##

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end

  resources :messages, only: [:new, :create]
  
end
