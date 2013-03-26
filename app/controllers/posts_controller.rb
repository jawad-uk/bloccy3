class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
	end

 def show
    @post = Post.find(params[:id])
    @new_comment = @post.comments.build
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
        redirect_to users_path
    else
        flash[:error] = "Error deleting user"
        redirect_to @user
  end
  
end
