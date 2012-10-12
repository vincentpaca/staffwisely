class Notification < ActiveRecord::Base
  attr_accessible :company_id, :sender_id, :message, :read, :company, :sender, :project, :project_id

  belongs_to :sender, :class_name => 'User'
  belongs_to :company
  belongs_to :project

  after_create :notify_all_users

  private

  def notify_all_users
    employers = self.project.employer.users.collect(&:email).join(",")
    employees = self.project.employee.users.collect(&:email).join(",")
    admins = Staffwisely::Application.ADMIN_EMAILS

    NotificationMailer.delay.notify_employer(employers, self.project)
    NotificationMailer.delay.notify_employee(employees, self.project)
    NotificationMailer.delay.notify_admin(admins, self.project)
  end
end
