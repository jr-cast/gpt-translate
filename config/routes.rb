Rails.application.routes.draw do
  root "home#index"
  resources :home, only: [:index, :show, :create]
end
