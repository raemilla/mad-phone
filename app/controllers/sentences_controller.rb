class SentencesController < ApplicationController
def new
end

def index
  @sentence = get_random_sentence
  render json: @sentence.to_json
end

def create
  if params[:sentence].count('.') == 1
    text = params[:sentence]
    @sentence = Sentence.new(user_id: current_user.id, text: text, story_id: params[:story_id])
    @sentence.save
    @sentence.story.update(updated_at: DateTime.now)
  elsif params[:sentence].count('.') > 1
    if request.xhr?
      raise ActionController::RoutingError.new('Not Found')
    else
      flash[:alert] = "You may only write one sentence at a time."
      redirect_to :back
    end
  elsif params[:sentence].count('.') == 0
    text = params[:sentence] + "."
    @sentence = Sentence.new(user_id: current_user.id, text: text, story_id: params[:story_id])
    @sentence.save
    @sentence.story.update(updated_at: DateTime.now)
  end
end

end
