class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user # Assign the logged-in user as the author
    if @comment.save
      flash[:notice] = "Comment added successfully!"
    else
      flash[:alert] = "Failed to add comment."
    end
    redirect_to @post
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    if @comment.user == current_user || current_user.admin? # Allow admins to delete as well
      @comment.destroy
      flash[:notice] = "Comment deleted successfully!"
    else
      flash[:alert] = "You are not authorized to delete this comment."
    end
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end