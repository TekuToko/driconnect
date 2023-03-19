class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    redirect_to request.referer
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, monolog_id: params[:monolog_id])
  end
end