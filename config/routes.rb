Rails.application.routes.draw do
  root to: 'pages#welcome'
  get 'welcome', to: 'pages#welcome'
  #
  resources :users, only: [:create, :new, :show]
  resource :session, only: [:create, :new, :destroy]
  #
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:destroy, :edit, :show, :update]
  end
end
