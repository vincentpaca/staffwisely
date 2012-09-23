class Employee < ActiveRecord::Base
  attr_accessible :added_by, :category, :company_id, :experience, :location, :position, :skill_level
  belongs_to :company
end
