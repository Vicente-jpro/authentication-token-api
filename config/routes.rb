Rails.application.routes.draw do
  resources :auth_tokens, only: [:create, :generate_token]
  resources :posts

end
