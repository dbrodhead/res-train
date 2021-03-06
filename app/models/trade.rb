class Trade < ActiveRecord::Base
  attr_accessible :mosid, :name
  
  has_many :tsessions, :dependent => :destroy
  has_many :training_days, :through => :tsessions
  has_many :periods, :through => :tsessions
  has_many :users
  
  default_scope order('trades.name ASC')
end
