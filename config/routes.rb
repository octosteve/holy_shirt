Rails.application.routes.draw do
  root "home#index"
  resources :shirts, except: [:destroy] do
    resources :comments, only: :create
  end
  resources :tags, only: [:index, :edit]
  get 'random_shirt', to: "random_shirt#index"
  get 'search', to: 'search#index'

  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'

  post   'sign-in', to: 'sessions#create'
  delete 'sign-out', to: 'sessions#destroy'
end
