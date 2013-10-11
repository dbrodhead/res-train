class FirstAidAttendee < ActiveRecord::Base
  attr_accessible :created_by, :department_id, :email, :first_aid_course_id, :fname, :lastthree, :lname, :user_id
  
  belongs_to :first_aid_course
  belongs_to :user
  belongs_to :department
end
