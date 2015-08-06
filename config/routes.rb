Rails.application.routes.draw do
  scope module: :front do
    resources :users, only: [:create, :destroy] do
      resources :logs, only: [:create]
    end
    resources :sessions, only: [:create]
    get 'sign_up', to: 'users#new'
    get 'sign_in', to: 'sessions#new'
    delete 'sign_out', to: 'sessions#destroy'
    root to: 'pages#home'
  end
  namespace :admin do
    resources :users, only: [:index, :show] do
      resources :logs, only: [:index]
    end
    root to: 'users#index'
  end
end
