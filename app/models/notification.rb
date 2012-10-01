class Notification < ActiveRecord::Base
  attr_accessible :company_id, :sender_id, :message, :read, :company, :sender

  belongs_to :sender, :class_name => 'User'
  belongs_to :company
end
