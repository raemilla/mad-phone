class SentencesController < ApplicationController
def new
end

def index
  @sentence = get_random_sentence
  render json: @sentence.to_json
end

def create
  @sentence = Sentence.new(user_id: current_user.id, text: params[:sentence], story_id: params[:story_id])
  if @sentence.save
  end
end

end
