class Period < ActiveRecord::Base
  attr_accessible :etime, :name, :number, :stime
  default_scope order('name ASC')
  
  has_many :tsessions, :dependent => :destroy
end
