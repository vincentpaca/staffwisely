class Country < ActiveRecord::Base
  attr_accessible :continent, :iso, :name
  belongs_to :continent
end
