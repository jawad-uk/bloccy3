Bloccy3::Application.routes.draw do

resources :posts do
  resources :comments
end


resources :users do 
  resources :posts, only: [:index, :show]
end

match '/about' => 'public#about'

root :to => 'posts#index'

end