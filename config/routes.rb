Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resource :industry

  resource :users, only: [:index, :create, :edit, :update]
  get '/users', to: 'users#index'

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
