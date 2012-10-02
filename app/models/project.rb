class Project < ActiveRecord::Base
  attr_accessible :description, :employee_id, :employer_id, :title, :employee, :employer

  belongs_to :employer, :class_name => "Company"
  belongs_to :employee, :class_name => "Company"
end
