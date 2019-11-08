Rails.application.routes.draw do
  # get 'appearances_controller/innew'

  # get 'appearances_controller/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]
end
