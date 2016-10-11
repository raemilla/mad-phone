module StoriesHelper

	def send_notifications
		@story = Story.find(self.params[:id])
		@contributors = @story.contributors
		@contributors.each do |contributor|
			unless Notification.find_by(story_id: @story_id, user_id: contributor.id)
			Notification.create!(text:"#{@story.title} has been completed! Go check it out!", user_id: contributor.id, story_id: @story.id)
			end
		end
	end
end
