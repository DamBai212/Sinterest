Rails.application.routes.draw do
 resources :sins

 root "sins#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
