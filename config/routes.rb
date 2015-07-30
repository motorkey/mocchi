Rails.application.routes.draw do
  scope module: :front do
    resources :users, only: [:create, :destroy]
    resources :sessions, only: [:create]
    get 'sign_up', to: 'users#new'
    get 'sign_in', to: 'sessions#new'
    delete 'sign_out', to: 'sessions#destroy'
    root to: 'pages#home'
  end
end
