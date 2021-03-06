class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create! post_params
  end

  def edit
  end

  def show
    @post = Post.find params[:id]
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit :category, :content
  end
end
