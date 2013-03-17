Bloccy3::Application.routes.draw do

resources :posts 
  
resources :users do 
    resources :posts, only: [:index, :show]
    resources :comments
  end
end

root :to => 'posts#index'