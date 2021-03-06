class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
    else
      @work = @comment.work
      @comments = @work.comments
      render 'works/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:reaction).merge(user_id: current_user.id, work_id: params[:work_id])
  end
end
