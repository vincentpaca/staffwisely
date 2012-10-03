class NotificationMailer < ActionMailer::Base
  default :from => "no-reply@staffwisely.com"

  def notify(emails)
    mail(:to => emails, :subject => "[Staffwisely] Notifier")
  end
end
