class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to customer_url(@comment.customer_id)
  end

  def destroy
    @comment = Comment.find(params[:id])
    customer = @comment.customer
    @comment.delete
    redirect_to customer_url(customer)
  end

  private

  def comment_params
    params.require(:comment).permit(
      :body,
      :customer_id
    )
  end
end
