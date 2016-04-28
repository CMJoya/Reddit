class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("view_count DESC")
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def edit
  end

  def create
    @post = current_user.posts.build(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
    end
  end

  def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
    end
  end

  def destroy
    @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    @post.update view_count: (@post.view_count + 1)
    redirect_to :back
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    @post.update view_count: (@post.view_count - 1)
    redirect_to :back
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :url)
    end
end
