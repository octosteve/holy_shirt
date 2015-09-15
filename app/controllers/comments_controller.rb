class CommentsController < ApplicationController
  def create
    @shirt = Shirt.find(params[:shirt_id])
    @comment = @shirt.comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
