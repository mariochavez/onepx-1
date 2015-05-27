Rails.application.routes.draw do
  resources :images, only: [:index, :new, :create], path: '/imagenes'
end
