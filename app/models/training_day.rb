class TrainingDay < ActiveRecord::Base
  attr_accessible :day, :details, :weekday
  default_scope order('day ASC')
  
  has_many :tsessions, :dependent => :destroy
  accepts_nested_attributes_for :tsessions
  has_many :trades, :through => :tsessions
  has_many :periods, :through => :tsessions
end
