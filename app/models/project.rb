class Project < ActiveRecord::Base
  attr_accessible :description, :employee_id, :employer_id, :title, :employee, :employer

  belongs_to :employer, :class_name => "Company"
  belongs_to :employee, :class_name => "Company"

  has_many :employments
  has_many :employees, :through => :employments

  after_create :send_notification

  private

  def send_notification
    Notification.create(:company => self.employee, :message => "sent you a proposal (#{self.title})", :sender => self.employer.users.first)
  end
  handle_asynchronously :send_notification

end
