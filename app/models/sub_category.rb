class SubCategory < ActiveRecord::Base
  attr_accessible :category, :name
  belongs_to :category
end
