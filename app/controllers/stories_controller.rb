class StoriesController < ApplicationController

  def new
    @words = ["pigs", "hats", "cats", "bowling balls", "princesses", "basketball", "baseball", "sweater vests", "Nickelback", "dev bootcamp", "New York City", "computers", "puppies", "carpets", "beards", "Bernie Sanders", "ballerinas", "dinosaurs", "aliens"]
  end

  def create
    user = current_user
    new_story = user.stories.create(title: params[:title])
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

  def index
    stories_arr = []
    if request.xhr?
      if params[:list] == "MostPopular"
        #needs to be updated when we put voting in
        stories_arr = Story.all
      elsif params[:list] == "MostRecentlyCompleted"
        completed = Story.all.select { |story| story.finished }
        stories_arr = completed.last.order.reverse.limit(10)
      end
      render json: stories_arr.as_json(include: :user)
    end
  end
  # private
  # def story_params
  #   params.require(:story).permit(:first_sentence)
  # end

end
