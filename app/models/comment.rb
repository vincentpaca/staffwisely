class Comment < ActiveRecord::Base
  attr_accessible :event, :message, :project_id, :user_id, :project
  
  belongs_to :project
  belongs_to :user
end
