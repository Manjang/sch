Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/hotels/about' => 'hotels#about'
  # resources :hotels

  # get '/hotels/faq' => 'hotels#faq'
  # resources :hotels

  root  'hotels#index'
  get	'hotels/index'
  get	'hotels/show'
  get 'hotels/about'
  get 'hotels/faq'
  get 'hotels/login_register'
  post 	'reviews/create'
  post 	'hotels/add_review'
  # resources :hotels 
  # resources :reviews
  
  root 'hotels#index'

end
