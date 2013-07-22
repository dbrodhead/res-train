class Pgroup < ActiveRecord::Base
  attr_accessible :name
  
  has_many :periods
end
