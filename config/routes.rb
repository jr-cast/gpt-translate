Rails.application.routes.draw do
  root "home#create"
  resources :home, only: [:index, :show, :create]
end
