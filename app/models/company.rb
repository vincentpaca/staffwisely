class Company < ActiveRecord::Base
  attr_accessible :address, :description, :name, :logo
  has_many :users

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
