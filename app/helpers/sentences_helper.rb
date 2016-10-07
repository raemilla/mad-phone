module SentencesHelper

  def get_random_sentence
    stories = Story.all
    ready_stories = []
    stories.each do |story|
      unless story.finished? || story.user_id == current_user.id
        ready_stories <<  story
      end
    end
    ready_stories.shuffle.each do |story|
      sentence = story.sentences.last
      unless sentence.user_id == current_user.id
        return sentence
      end
    end
    return []
  end

end
