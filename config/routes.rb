Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/hotels/about' => 'hotels#about'
  # resources :hotels

  # get '/hotels/faq' => 'hotels#faq'
  # resources :hotels
  
    
      
    
    
  
  
  root  'hotels#index'
  get	'hotels/index'
  get	'hotels/show'
  get 'login' => 'hotels#login_register'
  get 'about'     => 'hotels#about'
  get 'faq'     => 'hotels#faq'
  post 	'reviews/create'
  post 	'hotels/add_review'
  # resources :hotels 
  # resources :reviews
  
  root 'hotels#index'

end
