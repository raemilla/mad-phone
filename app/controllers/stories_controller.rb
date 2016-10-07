class StoriesController < ApplicationController

  def new
    @words = ["pigs", "hats", "cats", "bowling balls", "princesses", "basketball", "baseball", "sweater vests", "Nickelback", "dev bootcamp", "New York City", "computers", "2048", "puppies", "carpets", "beards", "Bernie Sanders"]
  end

  def create
    user = current_user
    new_story = user.stories.create
    new_story.sentences.create(text: "Once upon a time " + params[:first_sentence], user: user)
    flash[:alert] = "Story created successfully!"
    redirect_to new_sentence_path
  end

  def show
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(finished: true)

  end
  # private
  # def story_params
  #   params.require(:story).permit(:first_sentence)
  # end

end
