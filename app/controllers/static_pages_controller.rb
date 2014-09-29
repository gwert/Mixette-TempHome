class StaticPagesController < ApplicationController
  def notification_email
    NotificationMailer.notification_request_email(params[:q]).deliver

    respond_to do |format|
      format.js
    end
  end
end