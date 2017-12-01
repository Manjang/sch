Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/hotels/about' => 'hotels#about'
  # resources :hotels

  # get '/hotels/faq' => 'hotels#faq'
  # resources :hotels
  
    
      
    
    
  
  
  root  'hotels#index'
  get	'hotels/index'
  get	'hotels/show'
<<<<<<< HEAD
  get 'login' => 'hotels#login_register'
  get 'about'     => 'hotels#about'
  get 'faq'     => 'hotels#faq'
=======
  get 'hotels/about'
  get 'hotels/faq'
  get 'hotels/login_register'
>>>>>>> 459fce69e048652e14939d1e37cc4d0ca6a6781e
  post 	'reviews/create'
  post 	'hotels/add_review'
  # resources :hotels 
  # resources :reviews
  
  root 'hotels#index'

end
