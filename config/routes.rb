Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get	'hotels/index'
  get	'hotels/show'
  post "reviews/create"
  post 'hotels/add_review'
  # resources :hotels 
  # resources :reviews
  
  root 'hotels#index'

end
