class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def edit
  end

  def new
  end

  def create
	end

  def show
    @post = Post.(:post_id)
  end
end
