class Position < ActiveRecord::Base
  attr_accessible :department_id, :description, :name, :user_id
  
  belongs_to :department
  has_one :user, :through => :department
end
