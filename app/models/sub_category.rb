class SubCategory < ActiveRecord::Base
  attr_accessible :category, :name, :category_id
  belongs_to :category
end
