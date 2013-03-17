class UserController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  end

  def new
  end

  def delete
  end
end
