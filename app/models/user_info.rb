class UserInfo < ActiveRecord::Base
  attr_accessible :dept_id, :fname, :lname, :rank, :trade_id, :user_id
  
  belongs_to :user
end
