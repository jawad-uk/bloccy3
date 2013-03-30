class CommentsController < ApplicationController

def new
    @post = Post.find(params[:id])
  end

def create
    @post = Post.find(params[:id])
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





end
