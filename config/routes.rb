Rails.application.routes.draw do
  get 'registrations/new'

  root "home#index"
  resources :shirts, except: [:destroy]
  resources :tags, only: [:index, :edit]
  get 'random_shirt', to: "random_shirt#index"
  get 'search', to: 'search#index'

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
end
