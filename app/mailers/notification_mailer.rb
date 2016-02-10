class NotificationMailer < ActionMailer::Base
  default from: "Mixette <hello@mixetteapp.com>"

  def notification_request_email(email)
    @email = email

    mail(to: Figaro.env.NOTIFICATION_EMAILS, subject: "Mixette Go-Live Notification Request")
  end
end