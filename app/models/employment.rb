class Employment < ActiveRecord::Base
  attr_accessible :employee_id, :project_id
  
  belongs_to :employee
  belongs_to :project

  def save_employment(employee_id, project_id)
    Employment.create(:employee_id => employee_id, :project_id => project_id)
  end
  handle_asynchronously :save_employment, :queue => "employments"
end
