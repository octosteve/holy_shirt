Rails.application.routes.draw do
  root "home#index"
  get 'random_shirt', to: "random_shirt#index"
  get 'search', to: 'search#index'
  resources :shirts, only: [:index]
  resources :tags, only: [:index, :edit]
end
