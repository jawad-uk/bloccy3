Bloccy3::Application.routes.draw do

devise_for :users

resources :posts do
  resources :comments
end


resources :users do 
  resources :posts, only: [:index, :show]
end

root :to => 'posts#index'

end