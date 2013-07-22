class Department < ActiveRecord::Base
  attr_accessible :details, :name
  
  has_many :users
end
