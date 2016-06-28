class CommentsController < ApplicationController
  def create
    @create = Comment.new comment_params
    @create.save
    redirect_to '/dashboards/main#bottom'
  end

  private
    def comment_params
      params.require(:comment).permit(:comment).merge(user: current_user)
    end
end
