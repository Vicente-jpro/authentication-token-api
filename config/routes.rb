Rails.application.routes.draw do
  resources :autorizations, only: [:create]
  resources :posts

end
