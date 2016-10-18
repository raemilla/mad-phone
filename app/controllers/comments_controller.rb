class CommentsController < ApplicationController
before_action :require_user
def create
	@comment = Comment.new(user_id: current_user.id, text: params[:comment],story_id: params[:story_id])
  if @comment.save
    if request.xhr?
      render json: @comment.to_json(include: :user)
    else
      redirect_to story_path(params[:story_id])
    end
  end

end



end
