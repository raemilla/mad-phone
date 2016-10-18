class UsersController < ApplicationController
  before_action :require_user
  def show
    # binding.pry
    @user = User.find_by(id: params[:id])
    @contributed_to = []
    @user.stories.where(finished: false).each do |story|
      if story.sentences.first.user.id != @user.id
        @contributed_to << story
        # binding.pry
      end
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(params[:description])
  #     @user.save
  #   else
  #     render 'edit'
  #   end
  # end
end
