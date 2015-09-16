class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @shirt = Shirt.find(params[:shirt_id])
    @comment = @shirt.comments.create(comment_params.merge(user: current_user))
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
