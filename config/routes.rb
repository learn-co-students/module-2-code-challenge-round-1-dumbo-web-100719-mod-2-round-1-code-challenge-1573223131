Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'application#index', as: 'home'
  
  resources :guests, only: [:index,:show]
  resources :episodes, only: [:index,:show]
  resources :shows, only: [:new, :create]
end
