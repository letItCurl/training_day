class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification)
    partial_path = "notifications/#{notification.notifiable_type.underscore.pluralize}/#{notification.action}"
    html = ApplicationController.render partial: partial_path, locals: {notification: notification}, formats: [:html]
    ActionCable.server.broadcast "notifications:#{notification.recipient_id}", html: html
  end
end
