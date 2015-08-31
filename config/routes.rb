Rails.application.routes.draw do
  root "home#index"
  get 'random_shirt', to: "random_shirt#index"

  # get '/shirts', to: "shirts#index"
  # get '/tags', to: "tags#index"
  resources :shirts, only: [:index]
  resources :tags, only: [:index, :new, :create, :show, :edit, :update]
  # post 'tags', to: 'tags#create'
end
