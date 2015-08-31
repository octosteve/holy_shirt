Rails.application.routes.draw do
  root "home#index"
  get 'random_shirt', to: "random_shirt#index"
end
