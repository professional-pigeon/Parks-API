Rails.application.routes.draw do
  get "/parks/random", to: "parks#random"
  resources :parks
end
