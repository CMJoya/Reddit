class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

      if @comment.save
        redirect_to @post, notice: "Comment was successfully created."
      else
        render :new
    end
  end

  def destroy
    @comment = Comment.find_by id: params[:id]
    @comment.destroy
      redirect_to :back, notic: "Comment was successfully deleted."
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:post_id, :body, :user_id)
  end
end
