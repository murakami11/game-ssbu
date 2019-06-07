class CommentsController < ApplicationController
  before_action :require_user_logged_in, only: [:create]
  def create
    @comment = Comment.new(comment_params)
    @comment.character_id = params[:character_id]
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = 'コメントしました。'
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = 'コメント入力に失敗しました。'
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
