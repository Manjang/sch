Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "reviews/create"
  resources :hotels 
  resources :reviews
  
  root 'hotels#index'

end
