class PostsController < ApplicationController
  def create
	@user = User.find(params[:user_id])
	@post = @user.posts.create(params[:post])
	redirect_to user_path(@user)
  end
  def new
	@user = User.find(params[:user_id])
	@post = @user.posts.new(params[:post])
	redirect_to user_path(@user)
  end
  def show
	@user = User.find(params[:user_id])
	@post = @user.posts.find(params[:post])
	redirect_to user_path(@user)
  end
end
