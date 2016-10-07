module SentencesHelper
  def get_random_sentence
    stories = Story.all
    ready_stories = []
    stories.each do |story|
      unless story.finished? || story.user_id == current_user.id
        ready_stories <<  story
      end
    end
    ready_stories.sample.sentences.last
  end
end
