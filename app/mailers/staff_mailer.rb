class StaffMailer < ActionMailer::Base
  default :from => "no-reply@staffwisely.com"

  def inquiry(employer, employee, user)
    @employer = employer
    @user = user

    mail(:to => employer.email, :cc => user.email, :subject => "Inquiry on #{employee.full_name}")
  end
end
