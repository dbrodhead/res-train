class Role < ActiveRecord::Base
  attr_accessible :details, :name
  attr_accessible :details, :name, :user_ids, :as => :admin
  
  validates_uniqueness_of :name
  
  has_many :assignments
  has_many :users, :through => :assignments
end
