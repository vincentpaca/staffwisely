class NotificationMailer < ActionMailer::Base
  default :from => "no-reply@staffwisely.com"

  def notify_employer(emails)
    mail(:to => emails, :subject => "[Staffwisely] Staff Request Sent")
  end

  def notify_employee(emails)
    mail(:to => emails, :subject => "[Staffwisely] You Have A Project Request")
  end

  def notify_admin(emails)
    mail(:to => emails, :subject => "[Staffwisely] New Transaction On Staffwisely")
  end
end
