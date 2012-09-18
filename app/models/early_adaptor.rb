class EarlyAdaptor < ActiveRecord::Base
  validates_presence_of :email
  attr_accessible :email
end
