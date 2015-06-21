class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to customer_url(@comment.customer_id)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :customer_id
    )
  end
end
