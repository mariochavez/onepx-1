Rails.application.routes.draw do
  resource :sessions, only: [:create, :new]
  resource :identity, only: [:create, :new]
  delete 'log_out' => 'sessions#destroy', as: :log_out
  get 'log_in' => 'sessions#new', as: :log_in
  get 'sign_up' => 'identities#new', as: :sign_up

  resources :images, only: [:index, :new, :create], path: '/imagenes'

  root to: 'images#index'
end
