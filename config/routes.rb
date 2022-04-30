Rails.application.routes.draw do
  
  resources :posts do
    resources :comments
  end
  devise_for :users
  root to: "welcome#index"

  get '/myposts', to: 'posts#show_myposts'

end
