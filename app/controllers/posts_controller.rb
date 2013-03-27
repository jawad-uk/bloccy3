class PostsController < ApplicationController
  def index
  	@posts = Post.all.reverse
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to @post
    else       
      flash[:error] = "Not updated"
      redirect_to edit_post_path
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to @post
    else       
      flash[:error] = "Couldn't save"
      redirect_to new_post_path
    end
	end

 def show
    @post = Post.find(params[:id])
    @new_comment = @post.comments.build
    @comments = @post.comments
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
end
