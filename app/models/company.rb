class Company < ActiveRecord::Base
  attr_accessible :address, :description, :name, :logo, :website
  
  has_many :users
  has_many :employees
  has_many :notifications

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_presence_of :name

  def unread_notifications
    self.notifications.where(:read => false)
  end
end
