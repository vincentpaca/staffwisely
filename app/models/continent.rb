class Continent < ActiveRecord::Base
  attr_accessible :iso, :name
  has_many :countries
end
