class CommentsController < ApplicationController

http_basic_authenticate_with :name => "dhh", :password => "secret", :only => :destroy

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

  def delete  
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

end




# def show
#     @comment = comment.find(params[:id])
# end

# def edit
#     @comment = comment.find(params[:id])
# end

# def update
#   @comment = comment.find(params[:id])

#   if @comment.update_attributes(params[:comment])
#     redirect_to @comment
#   else       
#     flash[:error] = "Not updated"
#     redirect_to edit_comment_path
#   end