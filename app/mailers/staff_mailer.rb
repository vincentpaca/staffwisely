class StaffMailer < ActionMailer::Base
  default :from => "no-reply@staffwisely.com"

  def inquiry(employer, employee, user, message)
    @employer, @user, @message = employer, user, message
    mail(:to => employer.email, :cc => user.email, :subject => "Inquiry on #{employee.full_name}")
  end
end
