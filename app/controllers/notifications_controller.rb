class NotificationsController < ApplicationController

  def destroy
    notification = Notification.find_by(id: params[:notification_id])
    notification.destroy
  end
end
