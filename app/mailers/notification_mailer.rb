class NotificationMailer < ActionMailer::Base
  default from: "Mixtagram <hello@mixtagr.am>"

  def notification_request_email(email)
    @email = email

    mail(to: Figaro.env.NOTIFICATION_EMAILS, subject: "Mixtagram Go-Live Notification Request")
  end
end