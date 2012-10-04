class Comment < ActiveRecord::Base
  attr_accessible :event, :message, :project_id, :sender_id, :sender, :project
  
  belongs_to :project
  belongs_to :sender, :class_name => "User"
end