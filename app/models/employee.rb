class Employee < ActiveRecord::Base
  attr_accessible :added_by, :category, :company_id, :experience, :location, 
  :position, :skill_level, :full_name, :picture, :rate, :city, :tenure, :project_duration, 
  :availability, :skills, :skill_list

  belongs_to :company
  belongs_to :country, :foreign_key => :location

  has_attached_file :picture, :styles => { :thumb => "80x80>" }

  validates_presence_of :full_name, :position, :location, :category

  acts_as_taggable_on :skills

  def self.available
    Employee.where(:availability => "Available")
  end
end
