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
      case params[:list]
      when "MostPopular"
        stories_arr = Story.all.sort { |a,b| b.sum <=> a.sum }
      when "MostRecentlyCompleted"
        stories = Story.all.order("updated_at").reverse
        stories_arr = stories.select { |story| story.finished }
      when "MostRecentlyUpdated"
        stories_arr = Story.all.order("updated_at").reverse
      end
      stories_arr = stories_arr[0..10]
      render json: stories_arr.as_json(methods: :sum, include: :user)
    end
  end
  # private
  # def story_params
  #   params.require(:story).permit(:first_sentence)
  # end

end
