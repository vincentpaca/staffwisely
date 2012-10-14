class Comment < ActiveRecord::Base
  attr_accessible :event, :message, :project_id, :user_id, :project, :hours
  
  belongs_to :project
  belongs_to :user
end
