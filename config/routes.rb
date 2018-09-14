Rails.application.routes.draw do
  resources :publicacions
  resources :ciudads
  resources :pais
  get 'home/index'

  get 'users/info', to: 'users#info'

  devise_for :users
  resources :songs
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
