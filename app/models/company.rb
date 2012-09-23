class Company < ActiveRecord::Base
  attr_accessible :address, :description, :name, :logo, :website
  has_many :users
  has_many :employees

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "230x78>" }
end
