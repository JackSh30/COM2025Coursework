Rails.application.routes.draw do
  devise_for :users
  resources :songs
  resources :albums
  resources :artists
  root 'home#home'
  get 'contact', to: 'home#contact'
  get 'home/clock'
  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
