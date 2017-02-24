Rails.application.routes.draw do
  devise_for :users
  root to: 'characters#index'

  resources :characters do
  resources :houses, except: [:index]
  end
end
