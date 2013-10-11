class Department < ActiveRecord::Base
  attr_accessible :details, :name
  
  has_many :users
  has_many :positions
  has_many :first_aid_attendees
end
