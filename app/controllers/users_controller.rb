class UsersController < ApplicationController
  before_filter :require_user
  def show
    @user = User.find_by(id: params[:id])
  end
end
