class NotificationsChannel < ApplicationCable::Channel

  # in job to broadcas to every one
  # ApplicationController.render partial: "notifications/#{n.notifiable_type.underscore.pluralize}/#{n.action}", locals: {notification: n}, formats: [:html]

  def subscribed
    stream_from "notifications:#{current_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end
end
