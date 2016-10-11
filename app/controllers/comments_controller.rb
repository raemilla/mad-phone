class CommentsController < ApplicationController

def create
	@comment = Comment.new(user_id: current_user.id, text: params[:comment],story_id: params[:story_id])
	if @comment.save
		redirect_to story_path(params[:story_id])
	end
end


end
