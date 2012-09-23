class Employee < ActiveRecord::Base
  attr_accessible :added_by, :category, :company_id, :experience, :location, :position, :skill_level, :full_name, :picture
  belongs_to :company

  has_attached_file :picture, :styles => { :thumb => "80x80>" }
end
