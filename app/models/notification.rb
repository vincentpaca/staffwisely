class Notification < ActiveRecord::Base
  attr_accessible :company_id, :sender_id, :message, :read, :company, :sender

  belongs_to :sender, :class_name => 'User'
  belongs_to :company

  after_create :notify_all_users

  private

  def notify_all_users(email)
    emails = self.company.users.collect(&:email).join(",")
    NotificationMailer.delay.notify(emails)
  end
  handle_asynchronously :notify_all_users, :queue => "notifications"
end
