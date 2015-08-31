Rails.application.routes.draw do
  get 'shirts/index'

  root "home#index"
  get 'random_shirt', to: "random_shirt#index"

  get '/shirts', to: "shirts#index"
end
