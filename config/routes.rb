Bloccy3::Application.routes.draw do

resources :posts 

 resources :users do 
    resources :posts, only: [:index, :show]
    resources :comments
  end

match '/about' => 'public#about'

root :to => 'posts#index'

end