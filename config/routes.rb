Rails.application.routes.draw do
  resources :parks do
    resources :hikes
  end
end
