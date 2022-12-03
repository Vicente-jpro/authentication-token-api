Rails.application.routes.draw do
  resources :autorizations, only: [:generate_token] do 
    collection do
      get 'generate_token'
    end
  end
  resources :posts

end
