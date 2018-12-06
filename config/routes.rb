Rails.application.routes.draw do
 
  
 resources :categories
 resources :sins do
  collection do
    get 'hobby'
    get 'study'
    get 'team'
  end
end

  get 'users/new', to: 'users#new', as: 'signup'
  post 'users', to: "users#create"
  get 'users/:id', to: 'users#show'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'


 root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
