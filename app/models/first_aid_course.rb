class FirstAidCourse < ActiveRecord::Base
  attr_accessible :edate, :instructor, :iutolink, :iutonumber, :language, :sdate, :spots
  
  has_many :first_aid_attendees
end
