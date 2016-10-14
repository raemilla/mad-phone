class VotesController < ApplicationController
  before_filter :require_user
  def new
  end

  def create
    user = current_user
    story = Story.find_by(id: params[:story])
    story_sum = ""
    if request.xhr?
      # binding.pry
      if params[:vote] == "upvote"
        current_user.votes.create(value: 1, story_id: story.id)
        # binding.pry
        story_sum = "#{story.sum}"
      elsif params[:vote] == "downvote"
        current_user.votes.create(value: -1, story_id: story.id)
        story_sum = "#{story.sum}"
      end
      render json: story_sum.to_json
    end

  end
end
