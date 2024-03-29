class Project < ActiveRecord::Base
  attr_accessible :description, :employee_id, :employer_id, :title, :employee, :employer

  belongs_to :employer, :class_name => "Company"
  belongs_to :employee, :class_name => "Company"

  has_many :employments
  has_many :employees, :through => :employments
  has_many :comments

  after_create :send_notification

  def pending?
    true if self.project_status == 'pending'
  end

  def on_going?
    true if self.project_status == 'ongoing'
  end

  def self.recent(limit)
    self.order("created_at DESC").limit(limit)
  end

  private

  def send_notification
    Notification.create(:company => self.employee, :message => "sent you a proposal (#{self.title})", :sender => self.employer.users.first, :project => self)
  end
  handle_asynchronously :send_notification, :queue => "notifications"

end
