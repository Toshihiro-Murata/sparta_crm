class CommentsController < ApplicationController
  def create
    customer_id = comment_params["customer_id"].to_i
    user_id = current_user.id
    body = comment_params["body"]
    @comment = Comment.new(
      customer_id: customer_id,
      user_id:     user_id,
      body:        body
    )
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
      :customer_id,
    )
  end
end
