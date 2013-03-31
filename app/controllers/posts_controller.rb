class PostsController < ApplicationController

  #before_filter :authenticate_user!, except: [:index, :show]

  def index
  	@posts = Post.recent
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
    @comments = @post.comments
    
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
        redirect_to posts_path
    else
        flash[:error] = "Error deleting post"
        redirect_to @post

    end
  end
end
