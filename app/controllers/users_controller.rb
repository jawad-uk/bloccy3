  class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @posts = @user.posts
  end

  def new
  	@user = User.new
  end

  def delete
  end

  def edit
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user
  	else
  		render :edit
  	end
  end

  def update
  	@user = User.new(params[:id])
  	if @user.update_attributes(params[:user])
  		redirect_to @user
  	else
  		render :edit
  	end
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
