class Employee < ActiveRecord::Base
  attr_accessible :added_by, :category, :company_id, :experience, :location, :position, :skill_level, :full_name, :picture, :rate, :city, :tenure, :project_duration, :availability
  belongs_to :company

  has_attached_file :picture, :styles => { :thumb => "80x80>" }

  validates_presence_of :full_name, :position, :location
end
