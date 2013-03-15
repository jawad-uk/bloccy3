Bloccy3::Application.routes.draw do

  get "posts/index"

  get "posts/edit"

  get "posts/new"

  get "posts/show"

  get "user/index"

  get "user/show"

  get "user/new"

  get "user/delete"

  get "index/new"

  get "index/edit"

  get "index/show"

resources :posts 
  
resources :users do 
    resources :posts, only: [:index, :show]
    resources :comments
  end
end
