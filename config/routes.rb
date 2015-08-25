Rails.application.routes.draw do
  root 'stores#index'

  namespace :stores, path: ':store', as: :store  do
    get '/', to: 'items#index'
    resources :items, only: [:index, :show]
    resources :orders, only: [:index, :show]
  end
end
