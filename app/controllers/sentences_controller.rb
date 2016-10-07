class SentencesController < ApplicationController


def new
  @sentence = get_random_sentence
end

def create
  @sentence = Sentence.new(user_id: current_user.id, text: params[:sentence], story_id: params[:story_id])
  if @sentence.save
  end
end

end
