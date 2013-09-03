class Pgroup < ActiveRecord::Base
  attr_accessible :name
  
  has_many :periods
  has_many :tsessions, :through => :periods
end
