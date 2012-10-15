class Company < ActiveRecord::Base
  attr_accessible :address, :description, :name, :logo, :website
  
  has_many :users
  has_many :employees
  has_many :notifications
  has_many :employee_projects, :class_name => "Project", :foreign_key => "employee_id"
  has_many :employer_projects, :class_name => "Project", :foreign_key => "employer_id"

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_presence_of :name

  def unread_notifications
    self.notifications.where(:read => false)
  end

  def employer?(project)
    self.eql?(project.employer) ? true : false
  end

  def employee?(project)
    self.eql?(project.employee) ? true : false
  end

  def on_going_projects
    Project.where("(employer_id = ? or employee_id = ?) and project_status = 'ongoing'", self.id, self.id)
  end

  def pending_projects
    Project.where("(employer_id = ? or employee_id = ?) and project_status = 'pending'", self.id, self.id)
  end
end
